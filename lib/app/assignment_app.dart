import 'package:assignment/features/home/view/screen/home_view.dart';
import 'package:flutter/material.dart';

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
