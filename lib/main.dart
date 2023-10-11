// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  //from material.dart
  //run our app when boot
  runApp(MyApp());
}

/*
void main()=>runApp(MyApp());
 other implementation to run a method in dart
  */

//StatelessWidget is class predefined by flutter framework
//it is use to make the class as widget by extends any class

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    //use maps
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 4},
        {'text': 'Black', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 7},
        {'text': 'Cat', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favourite Lecturer?',
      'answers': [
        {'text': 'Manab', 'score': 0},
        {'text': 'Puey', 'score': 0},
        {'text': 'Yadi', 'score': 0},
        {'text': 'Yabdul', 'score': 0}
      ],
    },
  ];
//function for onpressed button
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print('answer 1 chosen ');

    print(_questionIndex);
  }

  //override from statelesswidget class
  @override
  Widget build(BuildContext context) {
    //return material app widget, turn combination off widget to real app

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Test'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : // ? = if , : = else
            Result(_totalScore),
      ),
    );
  }
}
