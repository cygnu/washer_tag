import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';

@freezed
class Quiz with _$Quiz {
  const Quiz._();
  const factory Quiz({
    required String image,
    required List<String> options,
    required int correctIndex,
  }) = _Quiz;
}
