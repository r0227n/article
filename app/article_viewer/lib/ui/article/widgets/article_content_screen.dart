import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:article_viewer/data/services/article_service.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/models/markdown_cotent.dart';

class ArticleContentScreen extends ConsumerStatefulWidget {
  const ArticleContentScreen({super.key, required this.path});

  final String path;

  @override
  ConsumerState<ArticleContentScreen> createState() =>
      _ArticleContentScreenState();
}

class _ArticleContentScreenState extends ConsumerState<ArticleContentScreen> {
  late final Future<MarkdownCotent> _contentFuture;

  String? _articleTitle;

  @override
  void initState() {
    super.initState();
    final articleService = ref.read(articleServiceProvider);
    _contentFuture = articleService.getContentByPath(widget.path).then((md) {
      setState(() {
        _articleTitle = md.title;
      });
      return md;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_articleTitle ?? '記事'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: ShareActionMenu(),
          ),
        ],
      ),
      body: FutureBuilder<MarkdownCotent>(
        future: _contentFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data!.content,
              padding: const EdgeInsets.all(16),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('エラーが発生しました: ${snapshot.error}'));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class ShareActionMenu extends StatefulWidget {
  const ShareActionMenu({super.key});

  @override
  State<ShareActionMenu> createState() => _ShareActionMenuState();
}

class _ShareActionMenuState extends State<ShareActionMenu> {
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Menu Button');

  @override
  void dispose() {
    _buttonFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      childFocusNode: _buttonFocusNode,
      menuChildren: <Widget>[
        MenuItemButton(
          onPressed: () async {
            final url = Uri.decodeComponent(
              GoRouter.of(context).state.uri.path,
            );
            await Clipboard.setData(ClipboardData(text: url));

            if (!context.mounted) {
              return;
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('URLをコピーしました'),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            );
          },
          leadingIcon: const Icon(Icons.link),
          child: const Text('URLをコピーする'),
        ),
        MenuItemButton(onPressed: () {}, child: const Text('Xに投稿する')),
      ],
      builder: (_, MenuController controller, Widget? child) {
        return IconButton(
          focusNode: _buttonFocusNode,
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: const Icon(Icons.share),
        );
      },
    );
  }
}
