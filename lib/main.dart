import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 3},
        {'text': 'Blue', 'score': 5},
        {'text': 'Black', 'score': 7},
        {'text': 'White', 'score': 9}
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 5},
        {'text': 'Rat', 'score': 7},
        {'text': 'Cow', 'score': 9}
      ]
    },
    {
      'question': 'What\'s your favorite cuisine?',
      'answers': [
        {'text': 'Indian', 'score': 3},
        {'text': 'Thai', 'score': 5},
        {'text': 'Japanese', 'score': 7},
        {'text': 'Italian', 'score': 9}
      ]
    },
  ];
  var _qIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerChosen(int score) {
    // qIndex++;
    _totalScore += score;
    setState(() {
      _qIndex++;
    });
    print(_qIndex);
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: (_qIndex < _questions.length)
            ? Quiz(
                answerChosen: _answerChosen,
                qIndex: _qIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
