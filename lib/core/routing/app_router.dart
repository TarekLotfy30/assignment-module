import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'route_path.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: RoutePath.homePage, initial: true),
    AutoRoute(page: AssignmentRoute.page, path: RoutePath.assignmentPage),
    AutoRoute(page: ScoreRoute.page, path: RoutePath.scorePage),
    AutoRoute(page: OfferRoute.page, path: RoutePath.offerPage),
    AutoRoute(page: OfferDetailsRoute.page, path: RoutePath.offerDetailsPage),
  ];
}
