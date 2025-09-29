import 'package:assignment/features/assignment/model/question_model.dart';
import 'package:assignment/features/assignment/view/screen/score_view.dart';
import 'package:get/get.dart';

class AssignmentController extends GetxController {
  int currentQuestionIndex = 0;
  int score = 0;
  bool isAnswered = false;
  int selectedAnswer = -1;

  void checkAnswer(int selectedIndex) {
    if (isAnswered) return; // prevent multiple answers

    selectedAnswer = selectedIndex;
    isAnswered = true;

    if (selectedIndex == questions[currentQuestionIndex].correctOptionIndex) {
      score++;
    }
    update(); // 🔥 triggers GetBuilder rebuild
  }

  void nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      currentQuestionIndex++;
      isAnswered = false;
      selectedAnswer = -1;
      update();
    } else {
      // Quiz finished then Navigate to Result page
      Get.off(() => ScoreView(score: score, total: questions.length));
    }
  }
}
