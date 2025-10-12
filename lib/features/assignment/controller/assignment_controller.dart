import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/routing/route_path.dart';
import '../model/question_model.dart';

class AssignmentController extends GetxController {
  int currentQuestionIndex = 0;
  int score = 0;
  bool isAnswered = false;
  int selectedAnswer = -1;

  int get total => questions.length;

  void checkAnswer(int selectedIndex) {
    if (isAnswered) {
      return; // prevent multiple answers
    }

    selectedAnswer = selectedIndex;
    isAnswered = true;

    if (selectedIndex == questions[currentQuestionIndex].correctOptionIndex) {
      score++;
    }
    update(); // triggers GetBuilder rebuild
  }

  Future<void> nextQuestion() async {
    if (currentQuestionIndex < questions.length - 1) {
      currentQuestionIndex++;
      isAnswered = false;
      selectedAnswer = -1;
      update(); // triggers GetBuilder rebuild
    } else {
      // assignment finished go to score screen
      await Get.offNamed(RoutePath.score);
    }
  }

  Color getColor(int selectedIndex) {
    final isSelected = selectedAnswer == selectedIndex;
    final isCorrect =
        selectedIndex == questions[currentQuestionIndex].correctOptionIndex;
    if (!isAnswered) {
      return Colors.blueAccent;
    }
    if (isSelected && isCorrect) {
      return Colors.green;
    }
    if (isSelected && !isCorrect) {
      return Colors.red;
    }
    if (isCorrect) {
      return Colors.green;
    }
    return Colors.grey;
  }
}
