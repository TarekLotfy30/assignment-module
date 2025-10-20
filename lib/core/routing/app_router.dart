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
    RedirectRoute(path: '/', redirectTo: RoutePath.student),
    AutoRoute(page: HomeRoute.page, path: RoutePath.home),
    AutoRoute(page: AssignmentRoute.page, path: RoutePath.assignment),
    AutoRoute(page: ScoreRoute.page, path: RoutePath.score),
    AutoRoute(page: OfferRoute.page, path: RoutePath.offer),
    AutoRoute(page: OfferDetailsRoute.page, path: RoutePath.offerDetails),
    AutoRoute(
      page: StudentRoute.page,
      path: RoutePath.student,
      children: [
        RedirectRoute(path: '', redirectTo: RoutePath.personalProfile),
        AutoRoute(
          page: PersonalProfileRoute.page,
          path: RoutePath.personalProfile,
        ),
        AutoRoute(page: AskMyTeacherRoute.page, path: RoutePath.askMyTeacher),
        AutoRoute(page: MyContentRoute.page, path: RoutePath.myContent),
        AutoRoute(page: ShoppingCartRoute.page, path: RoutePath.shoppingCart),
        AutoRoute(page: YourOrdersRoute.page, path: RoutePath.yourOrders),
        AutoRoute(page: YourWalletRoute.page, path: RoutePath.yourWallet),
        AutoRoute(page: LogoutRoute.page, path: RoutePath.logout),
        AutoRoute(page: SettingsRoute.page, path: RoutePath.settings),
      ],
    ),
  ];
}
