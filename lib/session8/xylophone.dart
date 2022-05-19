import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildItem(Colors.red,"sounds/note1.wav"),
            buildItem(Colors.green,"sounds/note2.wav"),
            buildItem(Colors.yellowAccent,"sounds/note3.wav"),
            buildItem(Colors.blue,"sounds/note4.wav"),
            buildItem(Colors.pink,"sounds/note5.wav"),
            buildItem(Colors.brown,"sounds/note6.wav"),
            buildItem(Colors.purple,"sounds/note7.wav"),
          ],
        ),
      ),
    );
  }

  Widget buildItem(Color color, String path, )=>Expanded(
    child: Container(
      color: color,
      width: double.infinity,
      child: FlatButton(onPressed: (){
        final player = AudioCache();
        player.play("$path");
      },
        child: Text("click me"),
      ),
    ),
  );
}
