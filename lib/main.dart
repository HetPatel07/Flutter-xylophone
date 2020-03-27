import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Expanded buildKey({Color color, int value}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$value.wav');
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, value: 1),
              buildKey(color: Colors.orange, value: 2),
              buildKey(color: Colors.yellow, value: 3),
              buildKey(color: Colors.lightGreen, value: 4),
              buildKey(color: Colors.green, value: 5),
              buildKey(color: Colors.blue, value: 6),
              buildKey(color: Colors.purple, value: 7),
            ],
          ),
        ),
      ),
    );
  }
}
