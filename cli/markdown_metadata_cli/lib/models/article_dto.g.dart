// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YearlyArticleDto _$YearlyArticleDtoFromJson(Map<String, dynamic> json) =>
    _YearlyArticleDto(
      year: (json['year'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      articles:
          (json['articles'] as List<dynamic>)
              .map((e) => ArticleMetadata.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$YearlyArticleDtoToJson(_YearlyArticleDto instance) =>
    <String, dynamic>{
      'year': instance.year,
      'count': instance.count,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'articles': instance.articles,
    };

_YearSummaryDto _$YearSummaryDtoFromJson(Map<String, dynamic> json) =>
    _YearSummaryDto(
      year: (json['year'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      months:
          (json['months'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
    );

Map<String, dynamic> _$YearSummaryDtoToJson(_YearSummaryDto instance) =>
    <String, dynamic>{
      'year': instance.year,
      'count': instance.count,
      'months': instance.months,
    };
