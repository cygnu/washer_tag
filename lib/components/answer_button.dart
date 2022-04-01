import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({Key? key, required this.optionText}) : super(key: key);

  final String optionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        child: Text(optionText),
      ),
    );
  }
}
