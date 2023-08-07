// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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

class MyApp extends StatelessWidget {
  //override from statelesswidget class
  @override
  Widget build(BuildContext context) {
    //return material app widget, turn combination off widget to real app

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is my default text'),
      ),
    );
  }
}
