import 'package:flutter/material.dart';
import 'package:myfistapp/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore = _totalScore + score;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s yur favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Blue', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 11},
          {'text': 'Dog', 'score': 1},
          {'text': 'Cat', 'score': 5},
          {'text': 'Bird', 'score': 9}
        ]
      },
      {
        'questionText': 'What\'s yur favorite Instructor?',
        'answers': [
          {'text': 'Godbless', 'score': 1},
          {'text': 'Collinson', 'score': 1},
          {'text': 'Kwaku', 'score': 1},
          {'text': 'Kent', 'score': 1}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("1st App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
