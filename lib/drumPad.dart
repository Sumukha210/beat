import 'package:drumpad/components.dart';
import 'package:drumpad/drumpadBtn.dart';
import 'package:flutter/material.dart';

class DrumPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: Components().navBar('Drumpad'),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    DrumpadBtn(
                      bgColor: Colors.deepPurpleAccent[100],
                      soundNumber: 1,
                    ),
                    DrumpadBtn(
                      bgColor: Colors.blueAccent[100],
                      soundNumber: 2,
                    ),
                    DrumpadBtn(
                      bgColor: Colors.greenAccent[100],
                      soundNumber: 3,
                    ),
                  ],
                ),
                Row(
                  children: [
                    DrumpadBtn(
                      bgColor: Colors.tealAccent[100],
                      soundNumber: 4,
                    ),
                    DrumpadBtn(
                      bgColor: Colors.orangeAccent[100],
                      soundNumber: 5,
                    ),
                    DrumpadBtn(
                      bgColor: Colors.cyanAccent[100],
                      soundNumber: 6,
                    ),
                  ],
                ),
                Row(
                  children: [
                    DrumpadBtn(
                      bgColor: Colors.pinkAccent[100],
                      soundNumber: 7,
                    ),
                    DrumpadBtn(
                      bgColor: Colors.indigoAccent[100],
                      soundNumber: 10,
                    ),
                    DrumpadBtn(
                      bgColor: Colors.purpleAccent[100],
                      soundNumber: 11,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
