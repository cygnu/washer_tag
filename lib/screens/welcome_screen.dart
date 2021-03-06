import 'package:flutter/material.dart';
import 'package:riverpod_context/riverpod_context.dart';
import 'package:washer_tag/models/quiz_providers.dart';
import 'package:washer_tag/screens/question_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("せんたくタグ"),
      ),
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read(quizProvider.notifier).prepare();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const QuestionScreen(),
                          ));
                    },
                    child: const Text(
                      "せんたく表示",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      elevation: 32.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
