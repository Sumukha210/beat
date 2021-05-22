import 'package:audioplayers/audioplayers.dart';
import 'package:drumpad/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrumPad extends StatelessWidget {
  playSound(int key) async {
    final audioPlayer = AudioCache();
    audioPlayer.play('drum-($key).wav');
  }

  Widget playContainer({Color bgColor, int soundNumber}) {
    return ElevatedButton(
        onPressed: () {
          this.playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: bgColor,
          padding: EdgeInsets.all(50),
        ),
        child: null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: Components().navBar('Drumpad'),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  playContainer(bgColor: Colors.redAccent[100], soundNumber: 1),
                  playContainer(
                      bgColor: Colors.deepOrangeAccent, soundNumber: 2),
                  playContainer(bgColor: Colors.yellow, soundNumber: 3),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  playContainer(bgColor: Colors.teal, soundNumber: 4),
                  playContainer(bgColor: Colors.blue, soundNumber: 5),
                  playContainer(bgColor: Colors.greenAccent, soundNumber: 6),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  playContainer(bgColor: Colors.amber, soundNumber: 7),
                  playContainer(bgColor: Colors.deepPurple, soundNumber: 10),
                  playContainer(
                      bgColor: Colors.lightBlueAccent, soundNumber: 11),
                ],
              ),
            ],
          ),
        ));
  }
}
