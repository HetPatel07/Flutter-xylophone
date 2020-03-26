import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());
void click(value) {
  final player = AudioCache();
  player.play('note$value.wav');
}

class MyApp extends StatelessWidget {
  int value;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    click(1);
                  },
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    click(2);
                  },
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    click(3);
                  },
                  child: null,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    click(4);
                  },
                  child: null,
                  color: Colors.lightGreen,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    click(5);
                  },
                  child: null,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    click(6);
                  },
                  child: null,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    click(7);
                  },
                  child: null,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
