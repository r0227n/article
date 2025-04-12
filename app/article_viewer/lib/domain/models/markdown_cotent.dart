import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

part 'markdown_cotent.freezed.dart';
part 'markdown_cotent.g.dart';

extension StringX on String {
  (Map<String, dynamic>, String) extractYamlMetadataAndContent() {
    final RegExp yamlFrontMatterRegex = RegExp(
      r'^---\n(.*?)\n---\n(.*)',
      dotAll: true,
    );
    final match = yamlFrontMatterRegex.firstMatch(this);

    if (match != null && match.groupCount > 1) {
      final yamlContent = match.group(1);
      final contentText = match.group(2) ?? '';
      final yamlDoc = loadYaml(yamlContent!);
      return (Map<String, dynamic>.from(yamlDoc), contentText);
    }

    return ({}, this);
  }
}

@freezed
sealed class MarkdownCotent with _$MarkdownCotent {
  const factory MarkdownCotent({
    required String title,
    required String emoji,
    required String type,
    required List<String> topics,
    required bool published,
    required String content,
  }) = _MarkdownCotent;

  factory MarkdownCotent.fromJson(Map<String, dynamic> json) =>
      _$MarkdownCotentFromJson(json);

  factory MarkdownCotent.fromMarkdown(String markdown) {
    final (yamlMetadata, content) = markdown.extractYamlMetadataAndContent();

    return MarkdownCotent.fromJson({
      'title': yamlMetadata['title'],
      'emoji': yamlMetadata['emoji'],
      'type': yamlMetadata['type'],
      'topics': yamlMetadata['topics'],
      'published': yamlMetadata['published'],
      'content': content,
    });
  }
}
