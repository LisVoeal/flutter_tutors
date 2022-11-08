import "package:flutter/material.dart";

class QuizButton extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  Function buttonAction;

  QuizButton({this.buttonText, this.buttonColor, this.buttonAction});
  @override
  Widget build(BuildContext context) {
    return QuizAppButton(this.buttonText, this.buttonColor, this.buttonAction);
  }

  Widget QuizAppButton(
      String buttonText, Color buttonColor, Function buttonAction) {
    return TextButton(
      onPressed: buttonAction,
      style: TextButton.styleFrom(backgroundColor: buttonColor),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}
