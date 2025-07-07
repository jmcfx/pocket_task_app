// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [NewTaskPage]
class NewTaskRoute extends PageRouteInfo<void> {
  const NewTaskRoute({List<PageRouteInfo>? children})
    : super(NewTaskRoute.name, initialChildren: children);

  static const String name = 'NewTaskRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NewTaskPage();
    },
  );
}
