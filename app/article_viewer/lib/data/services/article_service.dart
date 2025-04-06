import 'package:article_viewer/domain/models/article.dart';
import 'package:article_viewer/data/repositories/article/article_meta_repository.dart';
import 'package:article_viewer/data/repositories/article/article_content_repository.dart';

class ArticleService {
  const ArticleService(this.metaRepository, this.contentRepository)
    : assetsMetapath = 'assets/meta';

  final ArticleMetaRepository metaRepository;
  final ArticleContentRepository contentRepository;
  final String assetsMetapath;

  Future<List<Article>> getArticlesByYear(int year) async {
    final meta = await metaRepository.getByYear(year: year, path: assetsMetapath);

    return meta.articles;
  }

  Future<String> getContent(Article article) async {
    final content = await contentRepository.get(article: article);
    return content;
  }
}
