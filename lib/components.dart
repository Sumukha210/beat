import 'package:flutter/material.dart';

class Components {
  SizedBox heightSpacing(double space) {
    return SizedBox(
      height: space,
    );
  }

  AppBar navBar(String title) {
    return AppBar(
      toolbarHeight: 60,
      backgroundColor: Colors.grey[900],
      brightness: Brightness.dark,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 25,
            color: Colors.grey[300],
            fontWeight: FontWeight.bold,
            letterSpacing: 1),
      ),
    );
  }
}
