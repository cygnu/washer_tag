import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:washer_tag/models/quiz.dart';

part 'quiz_state.freezed.dart';

@freezed
class QuizState with _$QuizState {
  const QuizState._();
  const factory QuizState({
    required int quizNumber,
    List<int>? quizOrder,
    int? correctCount,
    int? currentQuizResult,
    Quiz? currentQuiz,
  }) = _QuizState;
}
