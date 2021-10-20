import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

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
      'questionText': 'Whats your favioret color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'whats your favroit animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 6},
        {'text': 'Dog', 'score': 4},
        {'text': 'Cat', 'score': 2},
        {'text': 'Rat', 'score': 8},
      ],
    },
    {
      'questionText': 'whats your name ',
      'answers': [
        {'text': 'Shubham', 'score': 1},
        {'text': 'Karan', 'score': 5},
        {'text': 'Rahul', 'score': 2},
        {'text': 'Honey', 'score': 9},
      ],
    },
    {
      'questionText': 'blah blah blah ...',
      'answers': [
        {'text': 'Something1', 'score': 1},
        {'text': 'Something2', 'score': 5},
        {'text': 'Something3', 'score': 4},
        {'text': 'Something4', 'score': 3},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('This is My App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
