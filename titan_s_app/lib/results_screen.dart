import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_s_app/data/questions.dart';
import 'package:titan_s_app/question_summary/questions_summary.dart';

class Resultsscreen extends StatelessWidget {
  const Resultsscreen({
    super.key,
    required this.chosenAnswer,
    required this.refresh,
  });

  final void Function() refresh;

  final List<String> chosenAnswer;

  List<Map<String, Object>> getsummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'image_Url': anime[i].imageurl,
        'questions': anime[i].text,
        'correct_Answer': anime[i].answers[0],
        'User_Answer': chosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getsummaryData();
    final numtotalQuestions = anime.length;
    final numcorrectQuestions = summaryData.where((data) {
      return data['User_Answer'] == data['correct_Answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'you got $numcorrectQuestions correctly out of $numtotalQuestions questions',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
            const SizedBox(
              height: 40,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(height: 10),
            TextButton.icon(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.refresh),
                onPressed: refresh,
                label: const Text('RESTART QUIZ'))
          ],
        ),
      ),
    );
  }
}
