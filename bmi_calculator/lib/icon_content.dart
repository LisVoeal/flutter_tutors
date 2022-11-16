import "package:flutter/material.dart";
import "constants.dart";

class IconContent extends StatelessWidget {
  IconContent({this.maleFemaleChoiceIcon, this.maleFemaleChoiceText});

  final IconData maleFemaleChoiceIcon;
  final String maleFemaleChoiceText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          maleFemaleChoiceIcon,
          color: Colors.white,
          size: 80.0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            maleFemaleChoiceText,
            style: kLabelTextStyle,
          ),
        ),
      ],
    );
  }
}
