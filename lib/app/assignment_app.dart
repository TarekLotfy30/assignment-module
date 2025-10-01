import 'package:assignment/core/routing/app_router.dart';
import 'package:assignment/core/routing/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      initialRoute: RoutesName.homeView,
      getPages: AppRouter.routes,
    );
  }
}
