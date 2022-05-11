import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:washer_tag/components/answer_button.dart';
import 'package:washer_tag/models/quiz_providers.dart';

class QuestionScreen extends ConsumerWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("せんたくタグ"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Q. この洗濯表示は何か?"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100.0,
                  vertical: 15.0,
                ),
                child: Image(
                  image: AssetImage(state.currentQuiz!.image),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  AnswerButton(
                    optionText: state.currentQuiz!.options[0],
                    userAnswers: 0,
                  ),
                  AnswerButton(
                    optionText: state.currentQuiz!.options[1],
                    userAnswers: 1,
                  ),
                  AnswerButton(
                    optionText: state.currentQuiz!.options[2],
                    userAnswers: 2,
                  ),
                  AnswerButton(
                    optionText: state.currentQuiz!.options[3],
                    userAnswers: 3,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
