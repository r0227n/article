import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:article_viewer/data/services/article_service.dart';

class ArticleContentScreen extends ConsumerStatefulWidget {
  const ArticleContentScreen({super.key, required this.path});

  final String path;

  @override
  ConsumerState<ArticleContentScreen> createState() => _ArticleContentScreenState();
}

class _ArticleContentScreenState extends ConsumerState<ArticleContentScreen> {
  late final Future<String> _contentFuture;

  @override
  void initState() {
    super.initState();
    final articleService = ref.read(articleServiceProvider);
    _contentFuture = articleService.getContentByPath(widget.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('記事')),
      body: FutureBuilder<String>(
        future: _contentFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Markdown(data: snapshot.data!, padding: const EdgeInsets.all(16));
          } else if (snapshot.hasError) {
            return Center(child: Text('エラーが発生しました: ${snapshot.error}'));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
