import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /*Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz_logo.png',
              width: 200,
              color: const Color.fromARGB(150, 255,255,255),
            ),
          ),*/
          Image.asset(
            'assets/images/quiz_logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn flutter the fun way',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          /*OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
            child: const Text('Start quiz'),
          ),*/
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text('Start quiz'),
          ),
        ],
      ),
    );
  }
}
