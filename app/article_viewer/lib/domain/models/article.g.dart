// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticleMeta _$ArticleMetaFromJson(Map<String, dynamic> json) => _ArticleMeta(
  year: (json['year'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  articles:
      (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ArticleMetaToJson(_ArticleMeta instance) =>
    <String, dynamic>{
      'year': instance.year,
      'count': instance.count,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'articles': instance.articles,
    };

_Article _$ArticleFromJson(Map<String, dynamic> json) => _Article(
  filePath: json['filePath'] as String,
  year: (json['year'] as num).toInt(),
  month: (json['month'] as num).toInt(),
  day: (json['day'] as num).toInt(),
  title: json['title'] as String,
  emoji: json['emoji'] as String,
  type: json['type'] as String,
  topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ArticleToJson(_Article instance) => <String, dynamic>{
  'filePath': instance.filePath,
  'year': instance.year,
  'month': instance.month,
  'day': instance.day,
  'title': instance.title,
  'emoji': instance.emoji,
  'type': instance.type,
  'topics': instance.topics,
};
