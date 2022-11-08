import "package:flutter/material.dart";
import "question.dart";

class QuizBrain {
  List<Question> _quizQuestions = [
    Question(
        quizQuestion: 'Some cats are actually allergic to humans',
        quizAnswer: true),
    Question(
        quizQuestion: 'You can lead a cow down stairs but not up stairs.',
        quizAnswer: false),
    Question(
        quizQuestion:
            'Approximately one quarter of human bones are in the feet.',
        quizAnswer: true),
    Question(quizQuestion: 'A slug\'s blood is green.', quizAnswer: true),
    Question(
        quizQuestion: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        quizAnswer: true),
    Question(
        quizQuestion: 'It is illegal to pee in the Ocean in Portugal.',
        quizAnswer: true),
    Question(
        quizQuestion:
            'No piece of square dry paper can be folded in half more than 7 times.',
        quizAnswer: false),
    Question(
        quizQuestion:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        quizAnswer: true),
    Question(
        quizQuestion:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        quizAnswer: false),
    Question(
        quizQuestion:
            'The total surface area of two human lungs is approximately 70 square metres.',
        quizAnswer: true),
    Question(
        quizQuestion: 'Google was originally called \"Backrub\".',
        quizAnswer: true),
    Question(
        quizQuestion:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        quizAnswer: true),
    Question(
        quizQuestion:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        quizAnswer: true),
  ];

  int _questionIndex = 0;

  int getQuestionNumber() {
    return _questionIndex;
  }

  String getQuizQuestion() {
    return _quizQuestions[_questionIndex].quizQuestion;
  }

  bool getQuizAnswer() {
    return _quizQuestions[_questionIndex].quizAnswer;
  }

  void nextQuestion() {
    if (_questionIndex < _quizQuestions.length - 1) {
      _questionIndex++;
    }
  }

  bool checkAnswer(bool pressedButton) {
    if (pressedButton == _quizQuestions[_questionIndex].quizAnswer) {
      _quizScore.add(rightAnswerIcon());
      return true;
    } else {
      _quizScore.add(wrongAnswerIcon());
      return false;
    }
  }

  List<Icon> getQuizScore() {
    return _quizScore;
  }

  Icon wrongAnswerIcon() {
    return Icon(Icons.close, color: Colors.red);
  }

  Icon rightAnswerIcon() {
    return Icon(Icons.check, color: Colors.green);
  }

  List<Icon> _quizScore = [];
}
