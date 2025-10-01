import 'package:assignment/core/routing/app_router.dart';
import 'package:flutter/material.dart';

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      // initialRoute: RoutesName.homeView,
      // getPages: AppRouter.routes,
      routerConfig: AppRouter().config(),
    );
  }
}
