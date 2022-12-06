import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'] as String),
      //=================================================================
      //for (Widget wig
      //  in (questions[_questionIndex]['answers'] as List<String>)
      //    .map((answer) {
      //return Answer(_answerQuestion, answer);
      //}).toList())
      //wig,
      //=================================================================

      ...((questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((ans) {
        return Answer(
            () => answerQuestion(ans['score']), ans['text'] as String);
      }).toList())
      //=================================================================
    ]);
  }
}
