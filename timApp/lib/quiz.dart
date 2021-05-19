import 'package:flutter/material.dart';
import 'Answer.dart';
import 'question.dart';
class quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  Function answerQuestions;
  int questionIndex;

  quiz(List<Map<String, Object>> questions, Function answerQuestion , int questionIndex)
  {
    this.questions = questions;
    this.answerQuestions = answerQuestion;
    this.questionIndex = questionIndex;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["question"]),
        ...(questions[questionIndex]["answers"] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(()=>answerQuestions(answer["Score"]), answer["text"]);
        })
      ],
    );
  }
}
