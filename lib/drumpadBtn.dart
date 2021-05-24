import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DrumpadBtn extends StatelessWidget {
  final Color bgColor;
  final int soundNumber;

  DrumpadBtn({this.bgColor, this.soundNumber});

  playSound(int key) async {
    final audioPlayer = AudioCache();
    audioPlayer.play('drum-($key).wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 10, bottom: 10),
        child: MaterialButton(
          highlightElevation: 20,
          onPressed: () {
            this.playSound(this.soundNumber);
          },
          height: 190,
          color: this.bgColor,
          splashColor: Colors.blue[100],
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
