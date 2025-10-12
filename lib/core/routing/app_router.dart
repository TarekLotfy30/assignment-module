import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'route_path.dart';

// translate-me-ignore-all-file
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    RedirectRoute(path: '/', redirectTo: RoutePath.home),

    AutoRoute(page: HomeRoute.page, path: RoutePath.home),
    AutoRoute(page: AssignmentRoute.page, path: RoutePath.assignment),
    AutoRoute(page: ScoreRoute.page, path: RoutePath.score),
    AutoRoute(page: OfferRoute.page, path: RoutePath.offer),
    AutoRoute(page: OfferDetailsRoute.page, path: RoutePath.offerDetails),
  ];
}
