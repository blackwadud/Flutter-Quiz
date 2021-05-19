import 'package:flutter/material.dart';
import 'package:timApp/result.dart';
import 'quiz.dart';
import 'result.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int totalScore = 0;

  var _questions = [
    {
      "question": "Mandem what's your fucking Color?",
      "answers": [
        {"text": "black", "Score": 5},
        {"text": "Red", "Score": 2},
        {"text": "Green", "Score": 3},
        {"text": "white", "Score": 1}
      ],
    },
    {
      "question": "Oi PussyHoe your Stewpid Name?",
      "answers": [
        {"text": "Timi", "Score": 10},
        {"text": "Seun", "Score": 5},
        {"text": "Weedman", "Score": 9},
        {"text": "StonerTurner", "Score": 7}
      ]
    },
    {
      "question": "Ai bruda, what ends you from?",
      "answers": [
        {"text": "Streatham", "Score": 1},
        {"text": "peacham", "Score": 5},
        {"text": "GhettoYouth", "Score": 6},
        {"text": "DragoCity", "Score": 7}
      ]
    },
    {
      "question": "favourite Animal before i shank you now?",
      "answers": [
        {"text": "dog", "Score": 2},
        {"text": "cat", "Score": 5},
        {"text": "horse", "Score": 12},
        {"text": "snakes", "Score": 7}
      ]
    },
  ];

  void _answerQuestions(int score) {
    totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

   void _resetQuiz()
  {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Timi's App"),
          ),
          body: _questionIndex < _questions.length
              ? quiz(_questions, _answerQuestions, _questionIndex)
              : result(totalScore,_resetQuiz)),
    );
  }
}
