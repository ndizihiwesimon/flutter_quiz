import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> getSummaryData() {
      final List<Map<String, Object>> summary = [];
      for (var i = 0; i < chosenAnswers.length; i++) {
        summary.add({
          'question_id': i,
          'question': questions[i].question,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        });
      }
      return summary;
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Answers are....'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of answers'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
