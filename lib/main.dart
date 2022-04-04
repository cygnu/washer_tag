import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_context/riverpod_context.dart';
import 'package:washer_quiz/screens/welcome_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: InheritedConsumer(
        child: WasherQuiz(),
      ),
    ),
  );
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
