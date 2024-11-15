import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_s_app/answers_button.dart';
import 'package:titan_s_app/data/questions.dart';

class Questionscreen extends StatefulWidget {
  const Questionscreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<Questionscreen> createState() {
    return _Questionscreen();
  }
}

class _Questionscreen extends State<Questionscreen> {
  var currentQuestionIndex = 0;

  void anwerquestion(String answer) {
    widget.onSelectedAnswer(answer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = anime[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              currentquestion.imageurl,
              width: 350,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(currentquestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.satisfy(color: Colors.white, fontSize: 20)),
            const SizedBox(
              height: 60,
            ),
            ...currentquestion.shuffledAnswers().map(
              (answer) {
                return AnswerButton(
                    AnswerText: answer,
                    onTap: () {
                      anwerquestion(answer);
                    });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/titan-6.JPG',
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
