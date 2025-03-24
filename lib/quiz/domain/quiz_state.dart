import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/questions_data.dart';

part 'quiz_state.freezed.dart';

// Stan quizu - klasa domenowa implementująca immutability
@freezed
class QuizState with _$QuizState {
  const QuizState._();

  const factory QuizState({
    required List<Question> questions,
    required int currentQuestionIndex,
    required List<bool> userAnswers,
    required bool isCompleted,
    required int bestScore,
  }) = _QuizState;

  // Getter zwracający liczbę poprawnych odpowiedzi
  int get correctAnswersCount {
    return userAnswers.where((answer) => answer).length;
  }

  // Getter sprawdzający czy wszystkie pytania zostały odpowiedziane
  bool get allQuestionsAnswered =>
      userAnswers.length == questions.length;

  int get totalAnswersCount => userAnswers.length;
}
