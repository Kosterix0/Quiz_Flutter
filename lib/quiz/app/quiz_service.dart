import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/questions_data.dart';
import '../domain/quiz_state.dart';

// Kontroler quizu
class QuizService extends StateNotifier<QuizState> {
  final QuestionRepository _repository;

  QuizService(this._repository)
    : super(
        QuizState(
          questions: _repository.getAllQuestions(),
          currentQuestionIndex: 0,
          userAnswers: [],
          isCompleted: false,
          bestScore: 0,
        ),
      ) {
    _loadBestScore();
  }

  Future<void> _loadBestScore() async {
    final prefs = await SharedPreferences.getInstance();
    final bestScore = prefs.getInt('bestScore') ?? 0;
    state = state.copyWith(bestScore: bestScore);
  }

  Future<void> _saveBestScore(int score) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('bestScore', score);
  }

  // Metoda do odpowiadania na pytanie
  void answerQuestion(String selectedAnswer) {
    if (state.isCompleted) return;

    final currentQuestion =
        state.questions[state.currentQuestionIndex];
    final isCorrect =
        selectedAnswer == currentQuestion.correctAnswer;
    final updatedAnswers = List<bool>.from(
      state.userAnswers,
    )..add(isCorrect);

    final isLastQuestion =
        state.currentQuestionIndex ==
        state.questions.length - 1;
    final newIndex =
        isLastQuestion
            ? state.currentQuestionIndex
            : state.currentQuestionIndex + 1;
    final isCompleted =
        updatedAnswers.length == state.questions.length;

    final newCorrectAnswersCount =
        updatedAnswers.where((answer) => answer).length;
    final newBestScore =
        newCorrectAnswersCount > state.bestScore
            ? newCorrectAnswersCount
            : state.bestScore;

    if (newBestScore > state.bestScore) {
      _saveBestScore(newBestScore);
    }

    state = state.copyWith(
      userAnswers: updatedAnswers,
      currentQuestionIndex: newIndex,
      isCompleted: isCompleted,
      bestScore: newBestScore,
    );
  }

  // Metoda do restartowania quizu
  void restartQuiz() {
    state = QuizState(
      questions: state.questions,
      currentQuestionIndex: 0,
      userAnswers: [],
      isCompleted: false,
      bestScore:
          state.bestScore, // Zachowujemy najlepszy wynik
    );
  }
}

// Provider kontrolera quizu
final quizServiceProvider =
    StateNotifierProvider<QuizService, QuizState>((ref) {
      final repository = ref.watch(
        questionRepositoryProvider,
      );
      return QuizService(repository);
    });
