import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

void sound(int num) {
   final player = AudioCache();
   player.play('note$num.wav');
}

Expanded key(Color color, int num2) {
  return Expanded(
    child: FlatButton(
    color: color,
    onPressed: (){
      sound(num2);
    }, child: null,
    ),
  );
}

var num2;
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text("Xylophone", style: TextStyle(color: Colors.white),)
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                key(Colors.red, num2 = 1),
                key(Colors.orange,num2 = 2),
                key(Colors.yellow,num2 = 3),
                key(Colors.green,num2 = 4),
                key(Colors.blue,num2 = 5),
                key(Colors.indigo,num2 = 6),
                key(Colors.purple, num2 = 7)
              
              ],
            )
          ),
        ),
      ),
    );
  }
}
