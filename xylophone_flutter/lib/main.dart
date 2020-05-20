import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // add it to your class as a static member
  static AudioCache player = AudioCache();
  // or as a local variable
  // final player = AudioCache();

  Expanded buildKey({int number, String text, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$number.wav');
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(number: 1, color: Colors.red, text: 'C'),
              buildKey(number: 2, color: Colors.orange, text: 'D'),
              buildKey(number: 3, color: Colors.yellow, text: 'E'),
              buildKey(number: 4, color: Colors.green, text: 'F'),
              buildKey(number: 5, color: Colors.blue, text: 'G'),
              buildKey(number: 6, color: Colors.indigo, text: 'A'),
              buildKey(number: 7, color: Colors.purple, text: 'B'),
            ],
          ),
        ),
      ),
    );
  }
}
