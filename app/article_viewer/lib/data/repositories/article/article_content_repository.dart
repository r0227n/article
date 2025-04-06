import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/article.dart';

part 'article_content_repository.g.dart';

@riverpod
ArticleContentRepository articleContentRepository(Ref ref) {
  return ArticleContentRepository();
}

class ArticleContentRepository {
  const ArticleContentRepository({this.assetsArticlesPath = 'assets/articles'});

  final String assetsArticlesPath;

  Future<List<String>> getAll({required ArticleMeta meta}) async {
    final contentFiles = meta.articles.map((e) => e.filePath).toList();

    return Future.wait(
      contentFiles.map((e) async {
        final content = await rootBundle.loadString(e);
        return content;
      }),
    );
  }

  Future<String> getByPath({required String path}) async {
    if (!path.endsWith('.md')) {
      throw ArgumentError('$path is not a markdown file');
    }

    final content = await rootBundle.loadString('$assetsArticlesPath/$path');
    return content;
  }
}
