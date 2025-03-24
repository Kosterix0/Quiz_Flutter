import 'package:flutter_riverpod/flutter_riverpod.dart';

class Question {
  final String text;
  final List<String> answers;
  final String correctAnswer;

  Question({
    required this.text,
    required this.answers,
    required this.correctAnswer,
  });
}

class QuestionRepository {
  final List<Question> _questions = [
    Question(
      text: 'Które miasto jest stolicą Polski?',
      answers: ['Kraków', 'Warszawa', 'Gdańsk'],
      correctAnswer: 'Warszawa',
    ),
    Question(
      text: 'Które miasto jest stolicą Francji?',
      answers: ['Paryż', 'Lyon', 'Marsylia'],
      correctAnswer: 'Paryż',
    ),
    Question(
      text: 'Które miasto jest stolicą Niemiec?',
      answers: ['Berlin', 'Monachium', 'Hamburg'],
      correctAnswer: 'Berlin',
    ),
    Question(
      text: 'Które miasto jest stolicą Hiszpanii?',
      answers: ['Madryt', 'Barcelona', 'Sewilla'],
      correctAnswer: 'Madryt',
    ),
    Question(
      text: 'Które miasto jest stolicą Włoch?',
      answers: ['Mediolan', 'Rzym', 'Neapol'],
      correctAnswer: 'Rzym',
    ),
    Question(
      text: 'Które miasto jest stolicą Portugalii?',
      answers: ['Porto', 'Lizbona', 'Faro'],
      correctAnswer: 'Lizbona',
    ),
    Question(
      text: 'Które miasto jest stolicą Norwegii?',
      answers: ['Oslo', 'Bergen', 'Trondheim'],
      correctAnswer: 'Oslo',
    ),
    Question(
      text: 'Które miasto jest stolicą Szwajcarii?',
      answers: ['Genewa', 'Berno', 'Zurych'],
      correctAnswer: 'Berno',
    ),
    Question(
      text: 'Które miasto jest stolicą Szwecji?',
      answers: ['Sztokholm', 'Göteborg', 'Malmö'],
      correctAnswer: 'Sztokholm',
    ),
    Question(
      text: 'Które miasto jest stolicą Grecji?',
      answers: ['Saloniki', 'Ateny', 'Patras'],
      correctAnswer: 'Ateny',
    ),
  ];

  List<Question> getAllQuestions() {
    return _questions;
  }
}

final questionRepositoryProvider =
    Provider<QuestionRepository>((ref) {
      return QuestionRepository();
    });
