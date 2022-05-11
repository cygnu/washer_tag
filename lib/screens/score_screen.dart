import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:washer_tag/models/quiz_providers.dart';

class ScoreScreen extends ConsumerWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${state.correctCount!}/5",
            )
          ],
        ),
      ),
    );
  }
}
