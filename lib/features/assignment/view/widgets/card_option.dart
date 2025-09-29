import 'package:assignment/features/assignment/controller/assignment_controller.dart';
import 'package:assignment/features/assignment/model/question_model.dart';
import 'package:flutter/material.dart';

class CardOption extends StatelessWidget {
  const CardOption({super.key, required this.index, required this.controller});

  final int index;
  final AssignmentController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: controller.getColor(index),
          padding: const EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () => controller.checkAnswer(index),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            questions[controller.currentQuestionIndex].options[index],
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
