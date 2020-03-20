import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 21) {
      resultText = 'Grade: D';
    } else if (resultScore > 21 && resultScore <= 23) {
      resultText = 'Grade: C';
    } else if (resultScore > 23 && resultScore <= 28) {
      resultText = 'Grade: B';
    } else {
      resultText = 'Grade: A+';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(resultPhrase,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          FlatButton(
            child: Text('Restart Quiz?'),
            textColor: Colors.green,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
