// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticleMetadata _$ArticleMetadataFromJson(Map<String, dynamic> json) =>
    _ArticleMetadata(
      filePath: json['filePath'] as String,
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      day: (json['day'] as num).toInt(),
      title: json['title'] as String,
      emoji: json['emoji'] as String,
      type: json['type'] as String,
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
      published: json['published'] as bool,
    );

Map<String, dynamic> _$ArticleMetadataToJson(_ArticleMetadata instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'title': instance.title,
      'emoji': instance.emoji,
      'type': instance.type,
      'topics': instance.topics,
      'published': instance.published,
    };
