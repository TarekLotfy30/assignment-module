import 'package:assignment/features/home/presentation/widgets/home_view_body.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: HomePageBody(),
    );
  }
}
