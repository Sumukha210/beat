import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DrumpadBtn extends StatefulWidget {
  final Color bgColor;
  final int soundNumber;

  DrumpadBtn({this.bgColor, this.soundNumber});

  @override
  _DrumpadBtnState createState() => _DrumpadBtnState();
}

class _DrumpadBtnState extends State<DrumpadBtn> {
  bool clicked = false;

  playSound(int key) async {
    final audioPlayer = AudioCache();
    audioPlayer.play('drum-($key).wav');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            this.playSound(widget.soundNumber);
            setState(() {
              clicked = true;
              Future.delayed(const Duration(milliseconds: 300), () {
                setState(() {
                  clicked = false;
                });
              });
            });
          },
          style: ElevatedButton.styleFrom(
            primary: widget.bgColor,
            padding: EdgeInsets.all(50),
            side: BorderSide(
                color: this.clicked ? Colors.yellowAccent : Colors.transparent,
                style: BorderStyle.solid,
                width: 4),
          ),
          child: null),
    );
  }
}
