import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/services/article_service.dart';
import '../../../domain/models/article.dart';

part 'article_list_view_model.g.dart';

@riverpod
class ArticleListViewModel extends _$ArticleListViewModel {
  @override
  FutureOr<List<ArticleMeta>> build() async {
    final service = ref.watch(articleServiceProvider);
    final metas = await service.getArticleMetaAll();
    return metas;
  }

  Future<List<Article>> getArticles({int? year, int? month}) async {
    final state = await future;

    return state.expand((e) => e.articles).where((article) {
      if (year != null && article.year != year) return false;
      if (month != null && article.month != month) return false;
      return true;
    }).toList();
  }
}
