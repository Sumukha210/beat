import 'package:audioplayers/audioplayers.dart';
import 'package:drumpad/components.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  playSound(int key) async {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$key.wav');
  }

  Widget playContainer({Color bgColor, int soundNumber}) {
    return ElevatedButton(
        onPressed: () {
          this.playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
            primary: bgColor, padding: EdgeInsets.all(50)),
        child: null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: Components().navBar('Xylophone'),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playContainer(bgColor: Colors.red, soundNumber: 1),
              playContainer(bgColor: Colors.orange, soundNumber: 2),
              playContainer(bgColor: Colors.yellow, soundNumber: 3),
              playContainer(bgColor: Colors.green, soundNumber: 4),
              playContainer(bgColor: Colors.teal, soundNumber: 5),
              playContainer(bgColor: Colors.blue, soundNumber: 6),
              playContainer(bgColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ));
  }
}
