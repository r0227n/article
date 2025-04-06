// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$articleListRoute];

RouteBase get $articleListRoute => GoRouteData.$route(
  path: '/articles',

  factory: $ArticleListRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: ':year/:month/:title',

      factory: $ArticleContentRouteExtension._fromState,
    ),
  ],
);

extension $ArticleListRouteExtension on ArticleListRoute {
  static ArticleListRoute _fromState(GoRouterState state) =>
      const ArticleListRoute();

  String get location => GoRouteData.$location('/articles');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ArticleContentRouteExtension on ArticleContentRoute {
  static ArticleContentRoute _fromState(GoRouterState state) =>
      ArticleContentRoute(
        year: int.parse(state.pathParameters['year']!)!,
        month: int.parse(state.pathParameters['month']!)!,
        title: state.pathParameters['title']!,
      );

  String get location => GoRouteData.$location(
    '/articles/${Uri.encodeComponent(year.toString())}/${Uri.encodeComponent(month.toString())}/${Uri.encodeComponent(title)}',
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'd60f0b22c24f5ba36e1a7f91526bbdc2c361a429';

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
