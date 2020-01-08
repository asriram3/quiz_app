import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final num resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    return 'You did it!\nYour final score was: ' + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text('Reset Quiz!'),
            onPressed: resetQuiz,
            color: Colors.redAccent,
            textColor: Colors.white,
            padding: EdgeInsets.all(40),
          )
        ],
      ),
    );
  }
}
