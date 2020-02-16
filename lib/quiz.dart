import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(questions.elementAt(0)),
        Question(questions[questionIndex]
            ['questionText']), //this is an alternative method to above
        // RaisedButton(
        //   child: Text('Answer 1'),
        //   onPressed: _answerQuestion,
        // ),
        // RaisedButton(
        //   child: Text('Answer 2'),
        //   onPressed: () => print('Answer 2 chosen'),
        // ),
        // RaisedButton(
        //   child: Text('Answer 3'),
        //   onPressed: () {
        //     print('Answer 3 Chosen!');
        //   },
        // ),
        //
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),

        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList() //spread operator: take the values and put them as individual values.
      ],
    );
  }
}
