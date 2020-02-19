import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Favourite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 9},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 7}
      ],
    },
    {
      'questionText': 'Favourite Animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 9},
        {'text': 'Hamster', 'score': 8},
        {'text': 'Fish', 'score': 7}
      ],
    },
    {
      'questionText': 'Favourite Place to Visit?',
      'answers': [
        {'text': 'India', 'score': 10},
        {'text': 'America', 'score': 9},
        {'text': 'China', 'score': 8},
        {'text': 'Europe', 'score': 7}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  //we add the _ to signify that the variable/function cannot be accessed through other files and remain private to it's class.
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What\'s your favourite colour?',
    //   'What\s your favourite animal?'
    // ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
