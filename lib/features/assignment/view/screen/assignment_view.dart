import 'package:assignment/features/assignment/controller/assignment_controller.dart';
import 'package:assignment/features/assignment/view/widgets/assignment_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// translate-me-ignore-all-file
class AssignmentView extends StatelessWidget {
  AssignmentView({super.key});

  final AssignmentController controller = Get.put(AssignmentController());

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
      body: AssignmentViewBody(),
    );
  }
}
