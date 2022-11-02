import "package:flutter/material.dart";
import "dart:math";

void main() => runApp(Magic8ball());

class Magic8ball extends StatefulWidget {
  const Magic8ball({super.key});

  @override
  State<Magic8ball> createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  int ballNumber = 1;

  void getBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text(
              'Magic 8 Ball',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Expanded(
              child: TextButton(
                child: Image.asset("images/ball$ballNumber.png"),
                onPressed: () {
                  getBallNumber();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
