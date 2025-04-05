import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import '../models/article_dto.dart';
import '../models/article_metadata.dart';
import '../io/index_io.dart';

class Index extends IndexIo {
  @override
  Future<void> create({required List<ArticleMetadata> metadatas, required String path}) async {
    final file = File(path);
    if (!await file.exists()) {
      await file.create(recursive: true);
    }

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
    stdout.writeln('index.json を生成しました');
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

  @override
  Future<void> update({required List<ArticleMetadata> metadatas, required String path}) async {
    final file = File(path);
    if (!await file.exists()) {
      throw ArgumentError('ファイルが見つかりません: $file');
    }

    final index = IndexDto.fromJson(jsonDecode(await file.readAsString()) as Map<String, dynamic>);
    final yearStats = _calculateYearStats(metadatas);
    final updatedYears = _updateYearSummaries(index.years, yearStats);

    final updatedIndex = IndexDto(lastUpdated: DateTime.now().toUtc(), years: updatedYears);

    await file.writeAsString(jsonEncode(updatedIndex.toJson()), flush: true);
    stdout.writeln('index.json を更新しました');
  }

  @override
  Future<void> save({required List<ArticleMetadata> metadatas, required String path}) async {
    final file = File(path);

    if (await file.exists()) {
      await update(metadatas: metadatas, path: file.path);
    } else {
      await create(metadatas: metadatas, path: file.path);
    }
  }
}
