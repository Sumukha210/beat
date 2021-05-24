import 'package:drumpad/drumPad.dart';
import 'package:drumpad/home.dart';
import 'package:drumpad/xylophone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/drumpad': (context) => DrumPad(),
        '/xylophone': (context) => Xylophone()
      },
    );
  }
}
