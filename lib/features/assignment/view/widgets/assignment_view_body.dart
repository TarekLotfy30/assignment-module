import 'dart:developer';

import 'package:assignment/features/assignment/controller/assignment_controller.dart';
import 'package:assignment/features/assignment/view/widgets/card_option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignment/features/assignment/model/question_model.dart';

// translate-me-ignore-all-file
class AssignmentViewBody extends StatelessWidget {
  const AssignmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question text
          GetBuilder<AssignmentController>(
            builder: (controller) {
              log("rebuilt the question text widget");
              return Text(
                "Question ${controller.currentQuestionIndex + 1} of ${questions.length}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),

          const SizedBox(height: 20),

          // Options
          GetBuilder<AssignmentController>(
            builder: (controller) {
              log("rebuilt the options widget");
              return Column(
                children: List.generate(
                  questions[controller.currentQuestionIndex].options.length,
                  (index) {
                    return CardOption(index: index, controller: controller);
                  },
                ),
              );
            },
          ),

          const Spacer(),

          // Next button
          GetBuilder<AssignmentController>(
            builder: (controller) {
              log("rebuilt the next button widget");
              return Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: controller.isAnswered
                      ? controller.nextQuestion
                      : null,
                  child: Text(
                    controller.currentQuestionIndex == questions.length - 1
                        ? "Finish"
                        : "Next",
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
