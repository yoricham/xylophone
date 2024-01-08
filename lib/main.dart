import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());


Expanded keys(int A, Color backgroundColor){
  return   Expanded(
    child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<BeveledRectangleBorder>(
            const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
        onPressed:(){
          final player = AudioPlayer();
          player.play(AssetSource('note$A.wav'));
        },
        child: Container()
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              children: [
                keys(1, Colors.red),
                keys(2, Colors.orange),
                keys(3, Colors.yellow),
                keys(4, Colors.green),
                keys(5, Colors.teal),
                keys(6, Colors.blue),
                keys(7, Colors.indigo),

              ]
          ),
        ),
      ),
    );
  }
}