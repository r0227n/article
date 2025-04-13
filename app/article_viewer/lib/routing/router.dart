import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'ext_route.dart';
import '../ui/article/widgets/article_content_screen.dart';
import '../ui/article/widgets/article_list_screen.dart';
import '../ui/core/ui/not_found_screen.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    routes: $appRoutes,
    initialLocation: const ArticlesRoute().location,
    redirect: (context, state) {
      // pathに全角数字が含まれている場合、半角数字に変換
      if (state.uri.containsFullWidthDigits()) {
        return '/${state.uri.pathSegmentsFullWidthToHalfWidth().join('/')}';
      }

      return null;
    },
    errorBuilder: (context, state) {
      return const NotFoundRoute().build(context, state);
    },
    debugLogDiagnostics: kDebugMode,
  );
}

@TypedGoRoute<ArticlesRoute>(
  path: '/',
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

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    for (final parameter in state.pathParameters.entries) {
      switch (parameter.key) {
        case 'year' when int.tryParse(parameter.value) == null:
          return const NotFoundRoute().location;
        case 'month' when int.tryParse(parameter.value) == null:
          return const NotFoundRoute().location;
      }
    }

    return null;
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

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (month < 1 || month > 12) {
      return const NotFoundRoute().location;
    }

    return null;
  }
}

class MarkdownRoute extends GoRouteData {
  const MarkdownRoute({
    required this.year,
    required this.month,
    required this.fileName,
  });

  final int year;
  final int month;
  final String fileName;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final path = '$year/$month/$fileName';

    return ArticleContentScreen(path: path);
  }
}

@TypedGoRoute<NotFoundRoute>(path: '/not-found')
class NotFoundRoute extends GoRouteData {
  const NotFoundRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NotFoundScreen();
  }
}
