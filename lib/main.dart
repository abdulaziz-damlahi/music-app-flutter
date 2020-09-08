import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded sevenkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              sevenkey(color: Colors.red, soundNumber: 1),
              sevenkey(color: Colors.green, soundNumber: 2),
              sevenkey(color: Colors.grey, soundNumber: 3),
              sevenkey(color: Colors.orange, soundNumber: 4),
              sevenkey(color: Colors.indigo, soundNumber: 5),
              sevenkey(color: Colors.indigoAccent, soundNumber: 6),
              sevenkey(color: Colors.amber, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
