import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../app/quiz_service.dart';
import '../domain/quiz_state.dart';

class QuizPage extends ConsumerWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizServiceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz o stolicach świata'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              quizState.isCompleted
                  ? _buildResultScreen(
                    context,
                    ref,
                    quizState,
                  )
                  : _buildQuizScreen(
                    context,
                    ref,
                    quizState,
                  ),
        ),
      ),
    );
  }

  // Ekran z pytaniem
  Widget _buildQuizScreen(
    BuildContext context,
    WidgetRef ref,
    QuizState state,
  ) {
    final currentQuestion =
        state.questions[state.currentQuestionIndex];
    final questionNumber =
        state.currentQuestionIndex + 1;
    final totalQuestions = state.questions.length;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pytanie $questionNumber z $totalQuestions',
            style:
                Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 24),

          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    currentQuestion.text,
                    style:
                        Theme.of(
                          context,
                        ).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children:
                        currentQuestion.answers.map((
                          answer,
                        ) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                            child: ElevatedButton(
                              onPressed:
                                  () => _answerQuestion(
                                    ref,
                                    answer,
                                  ),
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(
                                      vertical: 16.0,
                                      horizontal: 64.0,
                                    ),
                                backgroundColor:
                                    Colors.blue[100],
                              ),
                              child: Text(
                                answer,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 32),
          Text(
            'Wynik: ${state.correctAnswersCount} poprawnych na ${state.totalAnswersCount} odpowiedzianych',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          LinearProgressIndicator(
            value:
                state.userAnswers.length /
                state.questions.length,
            backgroundColor: Colors.grey[300],
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }

  // Ekran z wynikami
  Widget _buildResultScreen(
    BuildContext context,
    WidgetRef ref,
    QuizState state,
  ) {
    final correctAnswers = state.correctAnswersCount;
    final totalQuestions = state.questions.length;
    final percentage =
        (correctAnswers / totalQuestions * 100).round();

    Color resultColor = Colors.yellow;
    String resultMessage = 'Możesz poprawić!';

    if (percentage >= 80) {
      resultColor = Colors.green;
      resultMessage = 'Świetnie!';
    } else if (percentage >= 60) {
      resultColor = Colors.blue;
      resultMessage = 'Dobrze!';
    } else if (percentage < 40) {
      resultColor = Colors.red;
      resultMessage = 'Potrzebujesz więcej nauki!';
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Wyniki',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          Card(
            elevation: 4,
            color: resultColor.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    resultMessage,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: resultColor.withOpacity(
                        0.8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Poprawnych odpowiedzi: $correctAnswers z $totalQuestions',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Wynik: $percentage%',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Najlepszy wynik: ${state.bestScore}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 24),

                  ElevatedButton.icon(
                    onPressed: () => _restartQuiz(ref),
                    icon: const Icon(Icons.refresh),
                    label: const Text(
                      'Spróbuj ponownie',
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 24,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _answerQuestion(WidgetRef ref, String answer) {
    ref
        .read(quizServiceProvider.notifier)
        .answerQuestion(answer);
  }

  void _restartQuiz(WidgetRef ref) {
    ref.read(quizServiceProvider.notifier).restartQuiz();
  }
}
