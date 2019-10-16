import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter tutorial'),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(_questionIndex)),
            RaisedButton(child: Text('Ans 1'), onPressed: _answerQuestion),
            RaisedButton(
                child: Text('Ans 2'), onPressed: () => print('Ans 2 chosen')),
            RaisedButton(
                child: Text('Ans 3'),
                onPressed: () {
                  print('Ans 3 chosen!');
                }),
          ],
        ),
      ),
    );
  }
}
