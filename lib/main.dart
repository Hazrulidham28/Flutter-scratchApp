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
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Cat', 'Rabbit', 'Snake', 'Elephant'],
    },
    {
      'questionText': 'What\'s your favourite Instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];
//function for onpressed button
  var _questionIndex = 0;

  void _answerQuestion() {
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
          title: Text('My First quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : // ? = if , : = else
            Result(),
      ),
    );
  }
}
