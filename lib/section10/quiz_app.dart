import 'package:angla_course/section10/components.dart';
import 'package:angla_course/section10/question.dart';
import 'package:angla_course/section10/quiz_brain.dart';
import 'package:angla_course/section10/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Icon> scoreKeeper = [];
  void checkAnswer(bool userAnswer)
  {
    bool correctAnswer = quizBrain.getAnswerFunction();
    setState(() {
      if(quizBrain.isFinished()==true)
      {

        Alert(
          context: context,
          title: "finish",
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
      }
      else {
        if (userAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        }
        else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(quizBrain.getQuestionFunction(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                    ),),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: (){
                     checkAnswer(true);
                  },
                  child: Text("True",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),),
                ),
              ),
              SizedBox(height: 30,),
              Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.red,
          ),
          onPressed: (){
            checkAnswer(false);
            // setState(() {
            //   scoreKeeper.add(Icon(Icons.close,color: Colors.red,),);
            // });
          },
          child: Text("False",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
        ),
      ),
              Row(
                children: scoreKeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
