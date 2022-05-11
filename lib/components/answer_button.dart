import 'package:flutter/material.dart';
import 'package:riverpod_context/riverpod_context.dart';
import 'package:washer_tag/models/quiz_providers.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({
    Key? key,
    required this.optionText,
    required this.userAnswers,
  }) : super(key: key);

  final String optionText;
  final int userAnswers;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    bool isPressed = false;
    bool isCorrect = false;

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                context
                    .read(quizProvider.notifier)
                    .answer(widget.userAnswers, context);

                if (widget.userAnswers ==
                    context.read(quizProvider).currentQuiz!.correctIndex) {
                  isCorrect = !isCorrect;
                }
                isPressed = !isPressed;
              });
            },
            child: Text(
              widget.optionText,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: isPressed
                    ? (isCorrect ? Colors.green : Colors.redAccent)
                    : Colors.blue),
          ),
        ),
      ],
    );
  }
}
