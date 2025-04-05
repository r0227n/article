import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:markdown_metadata_cli/article_dto.dart';
import 'package:path/path.dart' as path;

import 'package:markdown_metadata_cli/article_metadata.dart';

Future<void> processMarkdownFiles(List<String> filePaths, String outputDir) async {
  // 記事のメタデータを格納する変数
  final List<ArticleMetadata> metadatas = [];

  stdout.writeln('メタデータを抽出中...');

  // 各ファイルを処理
  for (final filePath in filePaths) {
    final file = File(filePath);
    if (!await file.exists()) {
      stderr.writeln('警告: ファイルが見つかりません: $filePath');
      continue;
    }

    try {
      final articleMetadata = ArticleMetadata.fromFilePath(filePath);

      // 公開された記事のみ追加
      if (articleMetadata.published) {
        metadatas.add(articleMetadata);
      }
    } catch (e) {
      stderr.writeln('エラー: ファイル処理中に問題が発生しました: $filePath');
      stderr.writeln(e);
      continue;
    }
  }

  // 年ごとにメタデータを保存
  await saveMetadataByYear(metadatas, outputDir);

  // インデックスファイルを生成
  await saveIndex(metadatas: metadatas, file: File(path.join(outputDir, 'index.json')));

  stdout.writeln('完了! メタデータが $outputDir に生成されました');
}

Future<void> saveMetadataByYear(List<ArticleMetadata> metadatas, String outputDir) async {
  // 出力ディレクトリの作成
  final directory = Directory(outputDir);
  if (!await directory.exists()) {
    await directory.create(recursive: true);
  }

  // 年ごとにグループ化
  final groupedByYear = groupBy(metadatas, (ArticleMetadata metadata) => metadata.year);

  // 各年のデータを保存
  await Future.wait(
    groupedByYear.entries.map((entry) async {
      final year = entry.key;
      final articlesForYear = entry.value;
      final jsonFile = File(path.join(outputDir, '$year.json'));

      if (await jsonFile.exists()) {
        // 既存のファイルを更新
        await updateMetadata(metadatas: articlesForYear, file: jsonFile);
        stdout.writeln('$year.json を更新しました (${articlesForYear.length} 記事)');
      } else {
        // 新規作成
        final newDto = YearlyArticleDto(
          year: year,
          count: articlesForYear.length,
          lastUpdated: DateTime.now().toUtc(),
          articles: articlesForYear,
        );

        await jsonFile.writeAsString(jsonEncode(newDto.toJson()), flush: true);
        stdout.writeln('$year.json を生成しました (${articlesForYear.length} 記事)');
      }
    }),
  );
}

/// 既存のファイルを更新する
Future<void> updateMetadata({required List<ArticleMetadata> metadatas, required File file}) async {
  final year = metadatas.first.year;
  for (final metadata in metadatas) {
    print(metadata.filePath);
  }

  if (!await file.exists()) {
    throw ArgumentError('ファイルが見つかりません: $file');
  } else if (metadatas.any((metadata) => metadata.year != year)) {
    throw ArgumentError('異なる年のメタデータが含まれています');
  }

  // 既存のファイルがある場合は、内容を読み込んで更新
  final yearArticle = YearlyArticleDto.fromJson(
    jsonDecode(await file.readAsString()) as Map<String, dynamic>,
  );

  final updateArticles = metadatas.where((e) => !yearArticle.articles.contains(e)).toList();
  final allArticles = [...yearArticle.articles, ...updateArticles];

  final updatedDto = YearlyArticleDto(
    year: year,
    count: allArticles.length,
    lastUpdated: DateTime.now().toUtc(),
    articles:
        allArticles..sort((a, b) {
          final dateA = DateTime(a.year, a.month, a.day);
          final dateB = DateTime(b.year, b.month, b.day);
          return dateB.compareTo(dateA); // 降順
        }),
  );

  await file.writeAsString(jsonEncode(updatedDto.toJson()), flush: true);
}

/// index.jsonを新規作成する
Future<void> createIndex({required List<ArticleMetadata> metadatas, required File file}) async {
  final groupedByYear = groupBy(metadatas, (ArticleMetadata metadata) => metadata.year);

  final years =
      groupedByYear.entries.map((e) {
        final year = e.key;

        final yearSummary = YearSummaryDto(
          year: year,
          count: metadatas.length,
          months: metadatas.map((e) => e.month).toSet().toList()..sort(),
        );

        return yearSummary;
      }).toList();

  final index = IndexDto(lastUpdated: DateTime.now().toUtc(), years: years);

  await file.writeAsString(jsonEncode(index.toJson()), flush: true);
}

/// index.jsonを更新する
Future<void> updateIndex({required List<ArticleMetadata> metadatas, required File file}) async {
  if (!await file.exists()) {
    throw ArgumentError('ファイルが見つかりません: $file');
  }

  final index = IndexDto.fromJson(jsonDecode(await file.readAsString()) as Map<String, dynamic>);
  final yearStats = _calculateYearStats(metadatas);
  final updatedYears = _updateYearSummaries(index.years, yearStats);

  final updatedIndex = IndexDto(lastUpdated: DateTime.now().toUtc(), years: updatedYears);

  await file.writeAsString(jsonEncode(updatedIndex.toJson()), flush: true);
}

/// 年ごとの統計情報を計算する
Map<int, ({int count, Set<int> months})> _calculateYearStats(List<ArticleMetadata> metadatas) {
  final stats = <int, ({int count, Set<int> months})>{};

  for (final metadata in metadatas) {
    final year = metadata.year;
    final current = stats[year] ?? (count: 0, months: {});
    stats[year] = (count: current.count + 1, months: current.months..add(metadata.month));
  }

  return stats;
}

/// 年ごとのサマリー情報を更新する
List<YearSummaryDto> _updateYearSummaries(
  List<YearSummaryDto> existingYears,
  Map<int, ({int count, Set<int> months})> yearStats,
) {
  final updatedYears = <YearSummaryDto>[];

  // 更新された年の情報を追加
  for (final year in yearStats.keys) {
    final stats = yearStats[year]!;
    updatedYears.add(
      YearSummaryDto(year: year, count: stats.count, months: stats.months.toList()..sort()),
    );
  }

  // 更新されていない年の情報を追加
  for (final year in existingYears) {
    if (!yearStats.containsKey(year.year)) {
      updatedYears.add(year);
    }
  }

  // 年で降順ソート
  updatedYears.sort((a, b) => b.year.compareTo(a.year));

  return updatedYears;
}

/// index.jsonを保存する
Future<void> saveIndex({required List<ArticleMetadata> metadatas, required File file}) async {
  if (await file.exists()) {
    await updateIndex(metadatas: metadatas, file: file);
  } else {
    await createIndex(metadatas: metadatas, file: file);
  }
}
