import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

part 'article_metadata.freezed.dart';
part 'article_metadata.g.dart';

extension YamlMapToJson on YamlMap {
  Map<String, dynamic> toJson() {
    final jsonString = jsonEncode(this);
    return jsonDecode(jsonString);
  }
}

extension ExtFile on File {
  Map<String, dynamic> readAsYamlSync() {
    final regExp = RegExp(r'^---\n(.*?)\n---', dotAll: true);
    final match = regExp.firstMatch(readAsStringSync());

    final yamlText = match?.group(1);
    if (yamlText case final String yamlText) {
      final yaml = loadYaml(yamlText) as YamlMap;
      return yaml.toJson();
    }

    throw Exception('Metadata not found');
  }

  DateTime parseDatePrefix() {
    final fileName = path.split('/').last;
    final dateMatch = RegExp(r'(\d{4})-(\d{2})-(\d{2})').firstMatch(fileName);

    if (dateMatch == null) {
      throw Exception('ファイル名から日付を抽出できませんでした: $fileName');
    }

    final year = int.parse(dateMatch.group(1)!);
    final month = int.parse(dateMatch.group(2)!);
    final day = int.parse(dateMatch.group(3)!);

    return DateTime(year, month, day);
  }
}

@freezed
sealed class ArticleMetadata with _$ArticleMetadata {
  const factory ArticleMetadata({
    required String filePath,
    required int year,
    required int month,
    required int day,
    required String title,
    required String emoji,
    required String type,
    required List<String> topics,
    required bool published,
  }) = _ArticleMetadata;

  factory ArticleMetadata.fromJson(Map<String, dynamic> json) => _$ArticleMetadataFromJson(json);

  factory ArticleMetadata.fromFilePath(String filePath) {
    final file = File(filePath);
    final metadata = file.readAsYamlSync();
    final date = file.parseDatePrefix();

    return ArticleMetadata(
      filePath: file.path,
      year: date.year,
      month: date.month,
      day: date.day,
      title: metadata['title'] as String,
      emoji: metadata['emoji'] as String,
      type: metadata['type'] as String,
      topics: List<String>.from(metadata['topics'] as List),
      published: metadata['published'] as bool,
    );
  }
}
