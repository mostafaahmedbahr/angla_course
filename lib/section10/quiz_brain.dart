
import 'package:angla_course/section10/question.dart';

class QuizBrain
{
  List<Question> _questions = [
    Question(
      questionAnswer: false,
      questionText: "China is on the African continent ?",
    ),
    Question(
      questionAnswer: false,
      questionText: "The earth is flat, not spherical ?",
    ),
    Question(
      questionAnswer: true,
      questionText: "The Nile River is in Egypt ?",
    ),
  ];

  int _questionNumber = 0;

  void nextQuestion()
  {
    if(_questionNumber<_questions.length-1)
    {
      _questionNumber++;
    }
    else
    {

    }
  }

  String getQuestionFunction()
  {
    return _questions[_questionNumber].questionText;
  }

  bool getAnswerFunction()
  {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

   void reset() {
    _questionNumber = 0;
  }
}