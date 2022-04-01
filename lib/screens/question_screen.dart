import 'package:flutter/material.dart';
import 'package:washer_quiz/components/answer_button.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("せんたくタグ"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Q1. この洗濯表示は何か?"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 100.0,
                  vertical: 15.0,
                ),
                child: Image(
                  image: AssetImage("images/100.gif"),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AnswerButton(
                    optionText: "つけ置き禁止",
                  ),
                  AnswerButton(
                    optionText: "家庭での洗濯禁止",
                  ),
                  AnswerButton(
                    optionText: "洗濯禁止",
                  ),
                  AnswerButton(
                    optionText: "手洗い禁止",
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
