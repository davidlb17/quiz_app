import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //? means its a widget or its null
  //Widget? activeScreen;

  var activeScreen = 'start-screen';

  /*
  @override
  void initState() {
    //good practice to call the super first
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }*/

  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 102, 20, 209)),
          child: screenWidget,
        ),
      ),
    );
  }
}
