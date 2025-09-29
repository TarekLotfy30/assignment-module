import 'dart:developer';

import 'package:assignment/features/assignment/controller/assignment_controller.dart';
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
                    final option = questions[controller.currentQuestionIndex]
                        .options[index];
                    final isSelected = controller.selectedAnswer == index;
                    final isCorrect =
                        index ==
                        questions[controller.currentQuestionIndex]
                            .correctOptionIndex;

                    Color getColor() {
                      if (!controller.isAnswered) return Colors.blueAccent;
                      if (isSelected && isCorrect) return Colors.green;
                      if (isSelected && !isCorrect) return Colors.red;
                      if (isCorrect) return Colors.green;
                      return Colors.grey;
                    }

                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: getColor(),
                          padding: const EdgeInsets.all(14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () => controller.checkAnswer(index),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            option,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
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
