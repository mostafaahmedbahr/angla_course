import 'package:flutter/material.dart';

Widget buildItemAnswer({
  required String answer,
  required Color color,
  required Function onPress,

})=>Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  ),
  width: double.infinity,
  height: 70,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color
    ),
    onPressed: ()=>onPress,
    child: Text(answer,
      style: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),),
  ),
);

// Question(
// questionText:"الصين موجودة فى القارة الافريقية ",
// questionImage: "assets/images/china.jpg",
// questionAnswer: false,
// ),
// Question(
// questionText:"الارض مسطحة وليست كروية",
// questionImage: "assets/images/earth.jpg",
// questionAnswer: false,
// ),
// Question(
// questionText: "نهر النيل يوجد فى مصر ؟",
// questionImage:"assets/images/nile.jpg",
// questionAnswer:true,
// ),