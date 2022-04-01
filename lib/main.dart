import 'package:flutter/material.dart';
import 'package:washer_quiz/screens/welcome_screen.dart';

void main() {
  runApp(const WasherQuiz());
}

class WasherQuiz extends StatelessWidget {
  const WasherQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
