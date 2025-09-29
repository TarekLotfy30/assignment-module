import 'package:assignment/features/assignment/controller/assignment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignment/features/assignment/model/question_model.dart';

// translate-me-ignore-all-file
class AssignmentViewBody extends StatelessWidget {
  const AssignmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AssignmentController>(
      init: AssignmentController(),
      builder: (controller) {
        final question = questions[controller.currentQuestionIndex];

        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Question text
              Text(
                "Q${controller.currentQuestionIndex + 1}. ${question.questionText}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Options
              ...List.generate(question.options.length, (index) {
                final option = question.options[index];
                final isSelected = controller.selectedAnswer == index;
                final isCorrect = index == question.correctOptionIndex;

                Color getColor() {
                  if (!controller.isAnswered) return Colors.blueAccent;
                  if (isSelected && isCorrect) return Colors.green;
                  if (isSelected && !isCorrect) return Colors.red;
                  if (isCorrect) return Colors.green;
                  return Colors.grey;
                }

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
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
              }),

              const Spacer(),

              // Next button
              Align(
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
              ),
            ],
          ),
        );
      },
    );
  }
}
