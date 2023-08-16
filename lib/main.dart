// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    //return material app widget, turn combination off widget to real app

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First quiz App'),
        ),
        body: Column(
          children: [
            Question(
              //variable store array of string
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
