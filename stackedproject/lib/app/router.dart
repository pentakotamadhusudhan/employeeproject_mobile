part of 'routes_import.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {

  @override
  RouteType get defaultRouteType =>const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    CustomRoute(page: HomeViewRoute.page,path: "/",
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>FadeTransition(opacity: animation,child: child,
    ) ),
    CustomRoute(page: StartupViewRoute.page,path: "/start",
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>FadeTransition(opacity: animation,child: child,
        ) ),
    CustomRoute(page: VoterSearchViewRoute.page,path: "/start",
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>FadeTransition(opacity: animation,child: child,
        ) ),

  ];
}