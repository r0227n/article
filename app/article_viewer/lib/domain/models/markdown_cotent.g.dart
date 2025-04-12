// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markdown_cotent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarkdownCotent _$MarkdownCotentFromJson(Map<String, dynamic> json) =>
    _MarkdownCotent(
      title: json['title'] as String,
      emoji: json['emoji'] as String,
      type: json['type'] as String,
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
      published: json['published'] as bool,
      content: json['content'] as String,
    );

Map<String, dynamic> _$MarkdownCotentToJson(_MarkdownCotent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'emoji': instance.emoji,
      'type': instance.type,
      'topics': instance.topics,
      'published': instance.published,
      'content': instance.content,
    };
