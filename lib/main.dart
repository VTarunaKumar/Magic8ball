import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int x = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              x = Random().nextInt(5) + 1;
              print("object");
            });
          },
          child: Image.asset("images/ball$x.png")),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}
