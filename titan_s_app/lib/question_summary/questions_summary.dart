import 'package:flutter/material.dart';
import 'package:titan_s_app/question_summary/question_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(
    this.summaryData, {
    super.key,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return questionitem(data);
          }).toList(),
        ),
      ),
    );
  }
}
