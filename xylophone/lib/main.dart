import "package:flutter/material.dart";
import "package:audioplayers/audioplayers.dart";

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  final player = AudioPlayer();

  void playSound(soundNumber) {
    player.play(DeviceFileSource('/assets/note$soundNumber.wav'));
  }

  Expanded playButton(Color buttonColor, int number) {
    return Expanded(
      child: TextButton(
          child: Container(
            color: buttonColor,
          ),
          onPressed: () {
            playSound(number);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            playButton(Colors.red, 1),
            playButton(Colors.orange, 2),
            playButton(Colors.yellow, 3),
            playButton(Colors.green, 4),
            playButton(Colors.teal, 5),
            playButton(Colors.blue, 6),
            playButton(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}
