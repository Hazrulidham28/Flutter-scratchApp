import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  //change function into VoidCallBack if no argument
  final Function answerQuestion;
  final int questionIndex;
  int score = 0;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        //spread operator as three dot , it take a list and pull all the value to surrounding
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']),
              answer['text'] as String); //()=> only pass address
        }).toList()
      ],
    );
  }
}
