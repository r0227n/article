import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../ui/article/widgets/article_content_screen.dart';
import '../ui/article/widgets/article_list_screen.dart';

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

@TypedGoRoute<ArticlesRoute>(
  path: '/articles',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ArticlesYearRoute>(
      path: ':year',
      routes: [
        TypedGoRoute<ArticlesMonthRoute>(
          path: ':month',
          routes: [TypedGoRoute<MarkdownRoute>(path: ':fileName')],
        ),
      ],
    ),
  ],
)
class ArticlesRoute extends GoRouteData {
  const ArticlesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ArticleListScreen();
  }
}

class ArticlesYearRoute extends GoRouteData {
  const ArticlesYearRoute({required this.year});

  final int year;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ArticleListScreen(year: year);
  }
}

class ArticlesMonthRoute extends GoRouteData {
  const ArticlesMonthRoute({required this.year, required this.month});

  final int year;
  final int month;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ArticleListScreen(year: year, month: month);
  }
}

class MarkdownRoute extends GoRouteData {
  const MarkdownRoute({required this.year, required this.month, required this.fileName});

  final int year;
  final int month;
  final String fileName;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final path = '$year/${month.toString().padLeft(2, '0')}/$fileName';

    return ArticleContentScreen(path: path);
  }
}
