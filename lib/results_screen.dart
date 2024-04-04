import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.answersSelected, required this.onRestart});
  final List<String> answersSelected;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var index = 0; index < answersSelected.length; index++) {
      summary.add({
        'question': questions[index].text,
        'correct_answer': questions[index].answers[0],
        'user_answer': answersSelected[index],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();

    final numQuestions = questions.length;
    final correctQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
        child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('$correctQuestions out of $numQuestions answers right'),
                const SizedBox(
                  height: 30,
                ),
                QuestionsSummary(summaryData: getSummaryData()),
                const SizedBox(
                  height: 30,
                ),
                TextButton.icon(
                  onPressed: onRestart,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Restart quiz'),
                )
              ],
            )));
  }
}
