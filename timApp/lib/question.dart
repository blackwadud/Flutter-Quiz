import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;

  //using a constructor to initialize the field
  Question(String question) {
    this.question = question;
  }

  @override
  Widget build(BuildContext context) {
    int marginmi = 20;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(marginmi.toDouble()),
      child: Text(
        question,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
