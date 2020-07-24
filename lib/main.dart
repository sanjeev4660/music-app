
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void whenClicked(int clickedInteger){
    final player = AudioCache();
    player.play('note$clickedInteger.wav');
  }

  Expanded buildKey( {Color color , int soundnumber} ){
   return( Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          whenClicked(soundnumber);
        },
      ),
    )
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
              buildKey(color : Colors.red , soundnumber: 1),
              buildKey(color: Colors.blue , soundnumber: 2),
              buildKey(color: Colors.green , soundnumber: 3),
              buildKey(color: Colors.yellow , soundnumber: 4),
              buildKey(color: Colors.orange , soundnumber: 5),
              buildKey(color: Colors.pink, soundnumber: 6),
              buildKey(color: Colors.purple , soundnumber: 7),



            ],
          ),

        ),
      ),
    );
  }
}


