import 'package:flutter/material.dart';

class Questionidentifier extends StatelessWidget {
  const Questionidentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 18, 125, 212)
              : Color.fromARGB(182, 224, 16, 85),
          borderRadius: BorderRadius.circular(100)),
      child: Text(questionNumber.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
