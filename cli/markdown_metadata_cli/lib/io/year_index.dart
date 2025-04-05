import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;
import '../models/article_metadata.dart';
import '../io/index_io.dart';
import '../models/article_dto.dart';

class YearIndex extends IndexIo with IndexIoMixin {
  @override
  Future<void> create({required List<ArticleMetadata> metadatas, required String path}) async {
    final year = metadatas.first.year;
    final file = File(path);

    if (metadatas.any((metadata) => metadata.year != year)) {
      throw ArgumentError('異なる年のメタデータが含まれています');
    }

    if (!await file.exists()) {
      await file.create(recursive: true);
    }

    final newDto = YearlyArticleDto(
      year: year,
      count: metadatas.length,
      lastUpdated: DateTime.now().toUtc(),
      articles: metadatas,
    );

    await file.writeAsString(formatJson(newDto.toJson()), flush: true);
    stdout.writeln('$year.json を生成しました (${metadatas.length} 記事)');
  }

  @override
  Future<void> save({required List<ArticleMetadata> metadatas, required String path}) async {
    final directory = Directory(path);
    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    // 年ごとにグループ化
    final groupedByYear = groupBy(metadatas, (ArticleMetadata metadata) => metadata.year);

    await Future.wait(
      groupedByYear.entries.map((entry) async {
        final year = entry.key;
        final articlesForYear = entry.value;
        final jsonFile = File(p.join(path, '$year.json'));

        if (await jsonFile.exists()) {
          // 既存のファイルを更新
          await update(metadatas: articlesForYear, path: jsonFile.path);
        } else {
          // 新規作成
          await create(metadatas: articlesForYear, path: jsonFile.path);
        }
      }),
    );
  }

  @override
  Future<void> update({required List<ArticleMetadata> metadatas, required String path}) async {
    final year = metadatas.first.year;
    final file = File(path);

    if (metadatas.any((metadata) => metadata.year != year)) {
      throw ArgumentError('異なる年のメタデータが含まれています');
    } else if (!await file.exists()) {
      throw ArgumentError('ファイルが見つかりません: $file');
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

    await file.writeAsString(formatJson(updatedDto.toJson()), flush: true);
    stdout.writeln('$year.json を更新しました (${metadatas.length} 記事)');
  }
}
