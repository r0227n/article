import 'package:article_viewer/ui/article/widgets/article_content_view.dart';
import 'package:article_viewer/ui/article/widgets/article_list_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    routes: $appRoutes,
    initialLocation: '/',
    redirect: (context, state) {
      // NOTE: ルートディレクトリを決めていないため、一旦/articlesにリダイレクト
      if (!state.uri.path.startsWith('/articles')) {
        return '/articles';
      }
      return null;
    },
    debugLogDiagnostics: kDebugMode,
  );
}

@TypedGoRoute<ArticleListRoute>(
  path: '/articles',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ArticleContentRoute>(path: ':year/:month/:title'),
  ],
)
class ArticleListRoute extends GoRouteData {
  const ArticleListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ArticleListView();
  }
}

class ArticleContentRoute extends GoRouteData {
  const ArticleContentRoute({required this.year, required this.month, required this.title});

  final int year;
  final int month;
  final String title;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final path = '$year/${month.toString().padLeft(2, '0')}/$title';
    return ArticleContentView(path: path);
  }
}
