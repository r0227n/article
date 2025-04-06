import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
sealed class ArticleMeta with _$ArticleMeta {
  const factory ArticleMeta({
    required int year,
    required int count,
    required DateTime lastUpdated,
    required List<Article> articles,
  }) = _ArticleMeta;

  factory ArticleMeta.fromJson(Map<String, dynamic> json) => _$ArticleMetaFromJson(json);
}

@freezed
sealed class Article with _$Article {
  const Article._();

  const factory Article({
    required String filePath,
    required int year,
    required int month,
    required int day,
    required String title,
    required String emoji,
    required String type,
    required List<String> topics,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  String get fileName => filePath.split('/').last;
  DateTime get date => DateTime(year, month, day);
}
