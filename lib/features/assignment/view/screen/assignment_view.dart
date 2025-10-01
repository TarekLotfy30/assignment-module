import 'package:assignment/features/assignment/view/widgets/assignment_view_body.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
class AssignmentView extends StatelessWidget {
  const AssignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assignment Questions',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: const AssignmentViewBody(),
    );
  }
}
