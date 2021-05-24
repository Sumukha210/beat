import 'package:drumpad/components.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget imageContainer(String path, String name, String routeName, context) {
    return Container(
      child: Column(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                side: BorderSide(
                    color: Colors.yellowAccent,
                    style: BorderStyle.solid,
                    width: 3),
                shape: CircleBorder(),
                padding: EdgeInsets.all(5)),
            onPressed: () {
              Navigator.pushNamed(context, routeName);
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(path),
              radius: 65,
            ),
          ),
        ],
      ),
    );
  }

  DecorationImage bgImage() {
    return DecorationImage(
      image: AssetImage('assets/background.jpg'),
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.65), BlendMode.darken),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      decoration: BoxDecoration(image: this.bgImage()),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Components().heightSpacing(100),
            Text(
              'Beat',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 80,
              ),
            ),
            Components().heightSpacing(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                this.imageContainer(
                    'assets/xylophone.jpg', 'Xylophone', '/xylophone', context),
                this.imageContainer(
                    'assets/drum.jpg', 'Drums', '/drumpad', context),
              ],
            )
          ],
        ),
      ),
    )));
  }
}
