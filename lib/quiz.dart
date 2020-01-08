import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerChosen;
  final num qIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.answerChosen,
      @required this.qIndex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[qIndex]['question'],
        ),
        ...(questions[qIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerChosen(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
