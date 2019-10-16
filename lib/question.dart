import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText); //this.questionText = input argument;

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText
    );
  }
}