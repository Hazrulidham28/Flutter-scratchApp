import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  //norm constructor, directly assing to questiontext variable
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        //instead of questtion text, flutter take size of container to center
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
