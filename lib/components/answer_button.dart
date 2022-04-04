import 'package:flutter/material.dart';
import 'package:riverpod_context/riverpod_context.dart';
import 'package:washer_quiz/models/quiz_providers.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    Key? key,
    required this.optionText,
    required this.userAnswers,
  }) : super(key: key);

  final String optionText;
  final int userAnswers;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              context.read(quizProvider.notifier).answer(userAnswers, context);
            },
            child: Text(optionText),
          ),
        ),
      ],
    );
  }
}
