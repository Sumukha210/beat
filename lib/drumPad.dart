import 'package:drumpad/components.dart';
import 'package:drumpad/drumpadBtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrumPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: Components().navBar('Drumpad'),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(15),
              child: Wrap(
                spacing: 10,
                children: <Widget>[
                  DrumpadBtn(bgColor: Colors.redAccent[100], soundNumber: 1),
                  DrumpadBtn(bgColor: Colors.deepOrangeAccent, soundNumber: 2),
                  DrumpadBtn(bgColor: Colors.yellow, soundNumber: 3),
                  DrumpadBtn(bgColor: Colors.teal, soundNumber: 4),
                  DrumpadBtn(bgColor: Colors.blue, soundNumber: 5),
                  DrumpadBtn(bgColor: Colors.greenAccent, soundNumber: 6),
                  DrumpadBtn(bgColor: Colors.amber, soundNumber: 7),
                  DrumpadBtn(bgColor: Colors.deepPurple, soundNumber: 10),
                  DrumpadBtn(bgColor: Colors.lightBlueAccent, soundNumber: 11),
                ],
              ),
            ),
          ),
        ));
  }
}
