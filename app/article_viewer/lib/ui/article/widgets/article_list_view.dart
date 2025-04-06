import 'package:article_viewer/domain/models/article.dart';
import 'package:article_viewer/ui/article/view_model/article_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../routing/router.dart';

class ArticleListView extends ConsumerWidget {
  const ArticleListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articles = ref.watch(articleListViewModelProvider);

    return Scaffold(
      appBar: AppBar(),
      body: switch (articles) {
        AsyncData(:final List<Article> value) => ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            final data = value[index];

            return ListTile(
              title: Text(data.title),
              onTap: () {
                ArticleContentRoute(
                  year: data.year,
                  month: data.month,
                  fileName: data.fileName,
                ).go(context);
              },
            );
          },
        ),
        AsyncError(:final error, :final stackTrace) => Text(stackTrace.toString()),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
