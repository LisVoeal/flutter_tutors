import "package:flutter/material.dart";
import "package:audioplayers/audioplayers.dart";

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  final player = AudioPlayer();
  void playSound(int soundNumber) {
    player.play(DeviceFileSource('/assets/note$soundNumber.wav'));
  }

  Expanded buildButton(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        child: Container(color: color),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildButton(1, Colors.red),
              buildButton(2, Colors.orange),
              buildButton(3, Colors.yellow),
              buildButton(4, Colors.green),
              buildButton(5, Colors.teal),
              buildButton(6, Colors.blue),
              buildButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
