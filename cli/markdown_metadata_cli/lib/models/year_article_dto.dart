import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_metadata.dart';

part 'year_article_dto.freezed.dart';
part 'year_article_dto.g.dart';

@freezed
sealed class YearlyArticleDto with _$YearlyArticleDto {
  const factory YearlyArticleDto({
    required int year,
    required int count,
    required DateTime lastUpdated,
    required List<ArticleMetadata> articles,
  }) = _YearlyArticleDto;

  factory YearlyArticleDto.fromJson(Map<String, dynamic> json) => _$YearlyArticleDtoFromJson(json);
}
