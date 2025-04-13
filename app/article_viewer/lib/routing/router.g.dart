// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$articlesRoute, $notFoundRoute];

RouteBase get $articlesRoute => GoRouteData.$route(
  path: '/',

  factory: $ArticlesRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: ':year',

      factory: $ArticlesYearRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':month',

          factory: $ArticlesMonthRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':fileName',

              factory: $MarkdownRouteExtension._fromState,
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $ArticlesRouteExtension on ArticlesRoute {
  static ArticlesRoute _fromState(GoRouterState state) => const ArticlesRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ArticlesYearRouteExtension on ArticlesYearRoute {
  static ArticlesYearRoute _fromState(GoRouterState state) =>
      ArticlesYearRoute(year: int.parse(state.pathParameters['year']!)!);

  String get location =>
      GoRouteData.$location('/${Uri.encodeComponent(year.toString())}');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ArticlesMonthRouteExtension on ArticlesMonthRoute {
  static ArticlesMonthRoute _fromState(GoRouterState state) =>
      ArticlesMonthRoute(
        year: int.parse(state.pathParameters['year']!)!,
        month: int.parse(state.pathParameters['month']!)!,
      );

  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(year.toString())}/${Uri.encodeComponent(month.toString())}',
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MarkdownRouteExtension on MarkdownRoute {
  static MarkdownRoute _fromState(GoRouterState state) => MarkdownRoute(
    year: int.parse(state.pathParameters['year']!)!,
    month: int.parse(state.pathParameters['month']!)!,
    fileName: state.pathParameters['fileName']!,
  );

  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(year.toString())}/${Uri.encodeComponent(month.toString())}/${Uri.encodeComponent(fileName)}',
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $notFoundRoute => GoRouteData.$route(
  path: '/not-found',

  factory: $NotFoundRouteExtension._fromState,
);

extension $NotFoundRouteExtension on NotFoundRoute {
  static NotFoundRoute _fromState(GoRouterState state) => const NotFoundRoute();

  String get location => GoRouteData.$location('/not-found');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'00fa61f640bc05ebdb8d02dcdfe7f2dbb82f7b76';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
