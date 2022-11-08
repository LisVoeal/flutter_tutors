import "button.dart";
import "package:flutter/material.dart";
import "quiz_brain.dart";

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: QuizApp(),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quizBrain.getQuizQuestion(),
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ),
        ),
        Expanded(
          child: QuizButton(
            buttonText: "True",
            buttonColor: Colors.green,
            buttonAction: () {
              setState(() {
                quizBrain.checkAnswer(true);
                quizBrain.nextQuestion();
              });
            },
          ),
        ),
        Expanded(
          child: QuizButton(
            buttonText: "False",
            buttonColor: Colors.red,
            buttonAction: () {
              setState(() {
                quizBrain.checkAnswer(false);
                quizBrain.nextQuestion();
              });
            },
          ),
        ),
        Row(
          children: quizBrain.getQuizScore(),
        ),
      ],
    );
  }
}
