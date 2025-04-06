import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:article_viewer/domain/models/article.dart';
import 'package:article_viewer/data/repositories/article/article_meta_repository.dart';
import 'package:article_viewer/data/repositories/article/article_content_repository.dart';

part 'article_service.g.dart';

@riverpod
ArticleService articleService(Ref ref) {
  final metaRepository = ref.watch(articleMetaRepositoryProvider);
  final contentRepository = ref.watch(articleContentRepositoryProvider);

  return ArticleService(metaRepository, contentRepository);
}

class ArticleService {
  const ArticleService(this.metaRepository, this.contentRepository)
    : assetsMetapath = 'assets/meta';

  final ArticleMetaRepository metaRepository;
  final ArticleContentRepository contentRepository;
  final String assetsMetapath;

  Future<List<Article>> getArticleAll() async {
    final meta = await metaRepository.getAll(path: assetsMetapath);

    return meta.expand((e) => e.articles).toList();
  }

  Future<List<Article>> getArticlesByYear(int year) async {
    final meta = await metaRepository.getByYear(year: year, path: assetsMetapath);

    return meta.articles;
  }

  Future<String> getContent(Article article) async {
    final content = await contentRepository.get(article: article);
    return content;
  }

  Future<String> getContentByPath(String path) async {
    final content = await contentRepository.getByPath(path: path);
    return content;
  }
}
