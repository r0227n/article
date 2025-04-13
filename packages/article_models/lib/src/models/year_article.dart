import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_metadata.dart';

part 'year_article.freezed.dart';
part 'year_article.g.dart';

@freezed
sealed class YearlyArticle with _$YearlyArticle {
  const factory YearlyArticle({
    required int year,
    required int count,
    required DateTime lastUpdated,
    required List<ArticleMetadata> articles,
  }) = _YearlyArticle;

  factory YearlyArticle.fromJson(Map<String, dynamic> json) =>
      _$YearlyArticleFromJson(json);
}
