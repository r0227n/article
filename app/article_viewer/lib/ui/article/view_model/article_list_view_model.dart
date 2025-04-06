import 'package:article_viewer/data/services/article_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:article_viewer/domain/models/article.dart';
part 'article_list_view_model.g.dart';

@riverpod
class ArticleListViewModel extends _$ArticleListViewModel {
  @override
  FutureOr<List<Article>> build() async {
    final service = ref.watch(articleServiceProvider);
    final articles = await service.getArticleAll();
    return articles;
  }
}
