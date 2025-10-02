// import 'package:assignment/core/bindings/assignment_binding.dart';
// import 'package:assignment/core/routing/routes_name.dart';
// import 'package:assignment/features/assignment/view/screen/assignment_view.dart';
// import 'package:assignment/features/assignment/view/screen/score_view.dart';
// import 'package:assignment/features/home/view/screen/home_view.dart';
// import 'package:get/get_navigation/get_navigation.dart';

// class AppRouter {
//   static const initialRoute = RoutesName.homeView;

//   static final routes = [
//     GetPage(
//       name: RoutesName.homeView,
//       page: () => HomeView(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: RoutesName.assignmentView,
//       page: () => AssignmentView(),
//       binding: AssignmentBinding(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: RoutesName.scoreView,
//       page: () => ScoreView(),
//       transition: Transition.fadeIn,
//     ),
//   ];
// }

import 'package:assignment/core/routing/app_router.gr.dart';
import 'package:assignment/core/routing/routes_name.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: RoutesName.homePage,initial: true),
    AutoRoute(page: AssignmentRoute.page, path: RoutesName.assignmentPage),
    AutoRoute(page: ScoreRoute.page, path: RoutesName.scorePage),
    AutoRoute(page: OfferRoute.page, path: RoutesName.offerPage,),
    AutoRoute(page: OfferDetailsRoute.page, path: RoutesName.offerDetailsPage),
  ];
}
