import 'package:flutter/material.dart';
import 'package:titan_s_app/question_screen.dart';
import 'package:titan_s_app/results_screen.dart';
import 'package:titan_s_app/start_screen.dart';
import 'package:titan_s_app/data/questions.dart';

class Titan extends StatefulWidget {
  const Titan({super.key});

  @override
  State<Titan> createState() {
    return _TitanState();
  }
}

class _TitanState extends State<Titan> {
  Widget? activescreen;
  List<String> pickedanswer = [];

  @override
  void initState() {
    activescreen = StartScreen(switchscreen);
    super.initState();
  }

  void switchscreen() {
    setState(() {
      activescreen = Questionscreen(
        onSelectedAnswer: currentAnswer,
      );
    });
  }

  void restartQuiz() {
    setState(() {
      pickedanswer = [];
      activescreen = Questionscreen(onSelectedAnswer: currentAnswer);
    });
  }

  void currentAnswer(String answer) {
    pickedanswer.add(answer);
    if (pickedanswer.length == anime.length) {
      setState(() {
        activescreen = Resultsscreen(
          chosenAnswer: pickedanswer,
          refresh: restartQuiz,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Color.fromARGB(255, 4, 51, 91)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: activescreen,
        ),
      ),
    );
  }
}
