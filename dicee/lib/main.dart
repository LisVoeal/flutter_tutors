import "package:flutter/material.dart";
import "dart:math";

void main() => runApp(DiceeApp());

class DiceeApp extends StatefulWidget {
  const DiceeApp({Key key}) : super(key: key);

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              "Dicee App",
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceNumber();
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceNumber();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
