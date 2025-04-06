import 'package:flutter/services.dart';

import '../../../domain/models/article.dart';

class ArticleContentRepository {
  Future<List<String>> getAll({required ArticleMeta meta}) async {
    final contentFiles = meta.articles.map((e) => e.filePath).toList();

    return Future.wait(
      contentFiles.map((e) async {
        final content = await rootBundle.loadString(e);
        return content;
      }),
    );
  }

  Future<String> get({required Article article}) async {
    final filePath = 'assets/${article.filePath}';
    final content = await rootBundle.loadString(filePath);
    return content;
  }
}
