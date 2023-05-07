// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:stackedproject/ui/view/home/home_view.dart' as _i1;
import 'package:stackedproject/ui/view/startup/startup_view.dart' as _i2;
import 'package:stackedproject/ui/view/Votersearch/votersearch_view.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    StartupViewRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.StartupView(),
      );
    },
    VoterSearchViewRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.VoterSearchView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeViewRoute extends _i4.PageRouteInfo<void> {
  const HomeViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.StartupView]
class StartupViewRoute extends _i4.PageRouteInfo<void> {
  const StartupViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          StartupViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartupViewRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.VoterSearchView]
class VoterSearchViewRoute extends _i4.PageRouteInfo<void> {
  const VoterSearchViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          VoterSearchViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'VoterSearchViewRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
