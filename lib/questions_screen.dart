import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('question'),
          const SizedBox(height: 20),
          AnswerButton(
            answer: '1st answer',
            onTap: () {},
          ),
          AnswerButton(
            answer: '2nd answer',
            onTap: () {},
          ),
          AnswerButton(
            answer: '3rd answer',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
