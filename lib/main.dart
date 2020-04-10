import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade800,
          ),
          body: MagicEightBall(),
          backgroundColor: Colors.blue.shade300,
        ),
      ),
    );

class MagicEightBall extends StatefulWidget {
  @override
  _MagicEightBallState createState() => _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {
  int randomNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                randomNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$randomNumber.png'),
          ),
        )
      ],
    );
  }
}
