import 'package:assignment/core/routing/routes_name.dart';
import 'package:assignment/features/assignment/model/question_model.dart';
import 'package:get/get.dart';

class AssignmentController extends GetxController {
  int currentQuestionIndex = 0;
  int score = 0;
  bool isAnswered = false;
  int selectedAnswer = -1;

  int get total => questions.length;

  void checkAnswer(int selectedIndex) {
    if (isAnswered) return; // prevent multiple answers

    selectedAnswer = selectedIndex;
    isAnswered = true;

    if (selectedIndex == questions[currentQuestionIndex].correctOptionIndex) {
      score++;
    }
    update(); // triggers GetBuilder rebuild
  }

  void nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      currentQuestionIndex++;
      isAnswered = false;
      selectedAnswer = -1;
      update(); // triggers GetBuilder rebuild
    } else {
      // assignment finished go to score screen
      Get.offNamed(RoutesName.scoreView);
    }
  }
}
