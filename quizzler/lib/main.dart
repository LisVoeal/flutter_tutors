import "package:flutter/material.dart";
import "quiz_brain.dart";

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: QuizzlerApp(),
      ),
    );
  }
}

class QuizzlerApp extends StatefulWidget {
  const QuizzlerApp({Key key}) : super(key: key);

  @override
  State<QuizzlerApp> createState() => _QuizzlerAppState();
}

class _QuizzlerAppState extends State<QuizzlerApp> {
  QuizBrain quiz = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quiz.getQuizQuestion(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: (() {
              setState(() {
                quiz.checkAnswer(true);
              });
            }),
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: Text(
              "True",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: (() {
              setState(() {
                quiz.checkAnswer(false);
              });
            }),
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text(
              "False",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
          ),
        ),
        Row(children: quiz.results),
      ],
    );
  }
}
