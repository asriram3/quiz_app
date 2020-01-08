import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerCallback;
  final String answerText;

  Answer(this.answerCallback, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: RaisedButton(
        padding: EdgeInsets.all(15),
        color: Colors.redAccent,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: answerCallback,
      ),
    );
  }
}
