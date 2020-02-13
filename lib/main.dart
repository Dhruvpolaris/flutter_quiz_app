import 'package:flutter/material.dart';
import './question.dart';

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
  var _questionIndex = 0;
  //we add the _ to signify that the variable/function cannot be accessed through other files and remain private to it's class.
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          // Text(questions.elementAt(0)),
          Question(questions[
              _questionIndex]), //this is an alternative method to above
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Answer 2 chosen'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () {
              print('Answer 3 Chosen!');
            },
          ),
        ]),
      ),
    );
  }
}
