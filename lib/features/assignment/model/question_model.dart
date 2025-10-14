// translate-me-ignore-all-file
class QuestionModel {
  QuestionModel({
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;
}

// Dummy data
final List<QuestionModel> questions = [
  QuestionModel(
    questionText: 'What is the capital of France?',
    options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
    correctOptionIndex: 2,
  ),
  QuestionModel(
    questionText: 'Which planet is known as the Red Planet?',
    options: ['Earth', 'Mars', 'Jupiter', 'Saturn'],
    correctOptionIndex: 1,
  ),
  QuestionModel(
    questionText: 'Who wrote "Hamlet"?',
    options: [
      'Charles Dickens',
      'William Shakespeare',
      'Mark Twain',
      'Leo Tolstoy',
    ],
    correctOptionIndex: 1,
  ),
  QuestionModel(
    questionText: 'What is the largest mammal on Earth?',
    options: ['Elephant', 'Giraffe', 'Blue Whale', 'Hippopotamus'],
    correctOptionIndex: 2,
  ),
  QuestionModel(
    questionText: 'What is the chemical symbol for water?',
    options: ['O2', 'H2O', 'CO2', 'NaCl'],
    correctOptionIndex: 1,
  ),
];
