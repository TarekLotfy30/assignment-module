import 'package:assignment/core/routing/routes_name.dart';
import 'package:assignment/features/assignment/view/screen/assignment_view.dart';
import 'package:assignment/features/assignment/view/screen/score_view.dart';
import 'package:assignment/features/home/view/screen/home_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppRouter {
  static const initialRoute = RoutesName.homeView;

  static final routes = [
    GetPage(
      name: RoutesName.homeView,
      page: () => HomeView(),
      transition: Transition.fadeIn,
      
    ),
    GetPage(
      name: RoutesName.assignmentView,
      page: () => AssignmentView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.scoreView,
      page: () => ScoreView(),
      transition: Transition.fadeIn,
    ),
  ];
}
