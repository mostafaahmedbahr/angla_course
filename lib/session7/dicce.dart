 import 'dart:math';
import 'package:flutter/material.dart';
class Dicce extends StatefulWidget {
  @override
  _DicceState createState() => _DicceState();
}

class _DicceState extends State<Dicce> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicce"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
       body:Center(
         child: Row(
           children: [
             Expanded(
               child:  FlatButton(
                 onPressed: (){
                   setState(() {
                     leftDiceNumber=Random().nextInt(6)+1;
                   });
                 },
                 child: Image.asset("assets/images/dice$leftDiceNumber.png"),
               ),
             ),
             Expanded(
               child: FlatButton(
                 onPressed: (){
                   setState(() {
                     rightDiceNumber=Random().nextInt(6)+1;
                   });
                 },
                  child: Image.asset("assets/images/dice$rightDiceNumber.png"),
               ),
             ),
           ],
         ),
       ),

    );
  }
}
