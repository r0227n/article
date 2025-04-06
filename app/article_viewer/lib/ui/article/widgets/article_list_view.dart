import 'package:article_viewer/domain/models/article.dart';
import 'package:article_viewer/ui/article/view_model/article_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../routing/router.dart';

class ArticleListView extends ConsumerStatefulWidget {
  const ArticleListView({super.key, this.year, this.month});

  final int? year;
  final int? month;

  @override
  ConsumerState<ArticleListView> createState() => _ArticleListViewState();
}

class _ArticleListViewState extends ConsumerState<ArticleListView> {
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

                  return ListTile(
                    title: Text(article.title),
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
              return const Center(child: Text('データがありません'));
            case (ConnectionState.done, null):
              return const Center(child: Text('エラーが発生しました'));
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
