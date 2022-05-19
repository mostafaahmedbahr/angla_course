import 'package:angla_course/section10/quiz_app.dart';
import 'package:angla_course/session7/dicce.dart';
import 'package:angla_course/session8/xylophone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(  MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
