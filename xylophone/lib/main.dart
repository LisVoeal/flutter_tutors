import "package:flutter/material.dart";
import "package:audioplayers/audioplayers.dart";

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  final player = AudioPlayer();

  void playSound(int soundNumber) {
    player.play(DeviceFileSource("assets/note$soundNumber.wav"));
  }

  Expanded makeButton(Color color, int sound) {
    return Expanded(
        child: TextButton(
      child: Container(
        color: color,
      ),
      onPressed: (() {
        playSound(sound);
      }),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              makeButton(Colors.red, 1),
              makeButton(Colors.orange, 2),
              makeButton(Colors.yellow, 3),
              makeButton(Colors.green, 4),
              makeButton(Colors.teal, 5),
              makeButton(Colors.blue, 6),
              makeButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
