import 'package:assignment/core/di/service_locator.dart';
import 'package:assignment/features/assignment/controller/assignment_controller.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
@RoutePage()
class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AssignmentController controller = getIt<AssignmentController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          "You scored ${controller.score} out of ${controller.total} 🎉",
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
