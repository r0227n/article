import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_metadata.dart';

part 'article_dto.freezed.dart';
part 'article_dto.g.dart';

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

@freezed
sealed class YearSummaryDto with _$YearSummaryDto {
  const factory YearSummaryDto({required int year, required int count, required List<int> months}) =
      _YearSummaryDto;

  factory YearSummaryDto.fromJson(Map<String, dynamic> json) => _$YearSummaryDtoFromJson(json);
}

@freezed
sealed class IndexDto with _$IndexDto {
  const factory IndexDto({required DateTime lastUpdated, required List<YearSummaryDto> years}) =
      _IndexDto;

  factory IndexDto.fromJson(Map<String, dynamic> json) => _$IndexDtoFromJson(json);
}
