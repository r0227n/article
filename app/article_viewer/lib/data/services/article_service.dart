import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/article/article_meta_repository.dart';
import '../repositories/article/article_content_repository.dart';
import '../../../domain/models/article.dart';
import '../../../domain/models/markdown_cotent.dart';
part 'article_service.g.dart';

@riverpod
ArticleService articleService(Ref ref) {
  final metaRepository = ref.watch(articleMetaRepositoryProvider);
  final contentRepository = ref.watch(articleContentRepositoryProvider);

  return ArticleService(metaRepository, contentRepository);
}

class ArticleService {
  const ArticleService(this.metaRepository, this.contentRepository);

  final ArticleMetaRepository metaRepository;
  final ArticleContentRepository contentRepository;

  Future<List<ArticleMeta>> getArticleMetaAll() async {
    return metaRepository.getAll();
  }

  Future<List<Article>> getArticleAll() async {
    final meta = await metaRepository.getAll();

    return meta.expand((e) => e.articles).toList();
  }

  Future<List<Article>> getArticlesByYear(int year) async {
    final meta = await metaRepository.getByYear(year: year);

    return meta.articles;
  }

  Future<MarkdownCotent> getContentByPath(String path) async {
    final content = await contentRepository.getByPath(path: path);
    return MarkdownCotent.fromMarkdown(content);
  }
}
