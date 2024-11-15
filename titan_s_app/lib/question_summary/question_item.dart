import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_s_app/question_summary/question_identifier.dart';

class questionitem extends StatelessWidget {
  const questionitem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final theCorrectAnswer =
        itemData['User_Answer'] == itemData['correct_Answer'];
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Questionidentifier(
        isCorrectAnswer: theCorrectAnswer,
        questionIndex: itemData['question_index'] as int,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              itemData['image_Url'] as String,
              width: 150,
            ),
            Text(
              itemData['questions'] as String,
              style: GoogleFonts.lato(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              itemData['User_Answer'] as String,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 177, 48, 39),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              itemData['correct_Answer'] as String,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 12, 63, 105)),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )
    ]);
  }
}
