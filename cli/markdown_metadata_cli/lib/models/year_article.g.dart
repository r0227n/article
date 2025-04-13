// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YearlyArticle _$YearlyArticleFromJson(Map<String, dynamic> json) =>
    _YearlyArticle(
      year: (json['year'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      articles:
          (json['articles'] as List<dynamic>)
              .map((e) => ArticleMetadata.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$YearlyArticleToJson(_YearlyArticle instance) =>
    <String, dynamic>{
      'year': instance.year,
      'count': instance.count,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'articles': instance.articles,
    };
