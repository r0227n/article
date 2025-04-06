import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'article_empty.dart';
import 'article_list_tile.dart';
import '../view_model/article_list_view_model.dart';
import '../../../routing/router.dart';
import '../../../domain/models/article.dart';
import '../../core/ui/error_screen.dart';

class ArticleListScreen extends ConsumerStatefulWidget {
  const ArticleListScreen({super.key, this.year, this.month});

  final int? year;
  final int? month;

  @override
  ConsumerState<ArticleListScreen> createState() => _ArticleListScreenState();
}

class _ArticleListScreenState extends ConsumerState<ArticleListScreen> {
  late final Future<List<Article>> futureArticles;

  @override
  void initState() {
    super.initState();
    futureArticles = ref
        .read(articleListViewModelProvider.notifier)
        .getArticles(year: widget.year, month: widget.month);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Article>>(
        future: futureArticles,
        builder: (context, snapshot) {
          switch ((snapshot.connectionState, snapshot.data)) {
            case (ConnectionState.waiting, _):
              return const Center(child: CircularProgressIndicator());
            case (ConnectionState.done, List<Article> articles) when articles.isNotEmpty:
              return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  final article = articles[index];

                  return ArticleListTile(
                    article,
                    onTap: () {
                      MarkdownRoute(
                        year: article.year,
                        month: article.month,
                        fileName: article.fileName,
                      ).go(context);
                    },
                  );
                },
              );
            case (ConnectionState.done, List<Article> articles) when articles.isEmpty:
              return ArticleEmpty(year: widget.year, month: widget.month);
            default:
              return ErrorScreen(
                error: snapshot.error ?? '不明なエラー',
                stackTrace: snapshot.stackTrace,
              );
          }
        },
      ),
    );
  }
}
