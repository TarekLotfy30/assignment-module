import 'package:assignment/features/home/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: HomeViewBody(),
    );
  }
}
