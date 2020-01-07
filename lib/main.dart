import 'package:flutter/material.dart';

void main() => runApp(MyApp());
var qIndex = 0;

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerChosen() {
    qIndex = 1 - qIndex;
    setState(() {});
    print(qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[qIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerChosen,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen lah bodo');
              },
            ),
          ],
        ),
      ),
    );
  }
}
