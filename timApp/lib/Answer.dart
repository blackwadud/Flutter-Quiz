import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {
  Function selectAnswer;
  String answerText;

  Answer(Function selectAnswer,String answerText) {
    this.selectAnswer = selectAnswer;
    this.answerText = answerText;
  }
  double padding = 10.00;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.black,
        child: Text(answerText),
        onPressed: selectAnswer,
      ),
    );
  }
}
