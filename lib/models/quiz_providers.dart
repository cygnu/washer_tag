import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:washer_quiz/quiz.dart';
import 'package:washer_quiz/screens/welcome_screen.dart';
import 'package:washer_quiz/views/quiz_state.dart';

final quizProvider =
    StateNotifierProvider.autoDispose<QuizController, QuizState>((ref) {
  ref.maintainState = true;
  return QuizController(ref.read);
});

class QuizController extends StateNotifier<QuizState> with LocatorMixin {
  QuizController(this._reader)
      : super(const QuizState(
          quizNumber: 1,
          quizOrder: [],
          correctCount: 0,
          currentQuizResult: 0,
          currentQuiz: null,
        )) {
    prepare();
  }

  final Reader _reader;
  String get quizNumberString => state.quizNumber.toString();

  void prepare() {
    List<int> quizOrder = [0, 1, 2, 3, 4, 5];
    quizOrder.toList().shuffle();
    state = state.copyWith(
      quizNumber: 1,
      quizOrder: quizOrder,
      correctCount: 0,
      currentQuiz: quizList[quizOrder[0]],
      currentQuizResult: 0,
    );
  }

  Future<void> answer(int userAnswers, BuildContext context) async {
    // 正誤判定
    if (userAnswers == state.currentQuiz?.correctIndex) {
      state = state.copyWith(
        correctCount: state.correctCount! + 1,
      );
    } else {}

    // 待機
    await Future.delayed(const Duration(seconds: 1));

    if (state.quizNumber < 5) {
      state = state.copyWith(
        quizNumber: state.quizNumber + 1,
        currentQuiz: quizList[state.quizOrder![state.quizNumber]],
      );
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const WelcomeScreen(),
          ));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
