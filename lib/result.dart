import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resettingQuiz;
  Result(this.resultScore, this.resettingQuiz);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You are awesome and beautiful';
    } else if (resultScore <= 12) {
      resultText = "You're pretty likeable";
    } else if (resultScore <= 16) {
      resultText = 'you are strange';
    } else {
      resultText = 'you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resettingQuiz,
            child: Text("Reset"),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
