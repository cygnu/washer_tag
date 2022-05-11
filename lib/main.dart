import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_context/riverpod_context.dart';
import 'package:washer_tag/screens/welcome_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: InheritedConsumer(
        child: washerTag(),
      ),
    ),
  );
}

class washerTag extends StatelessWidget {
  const washerTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
