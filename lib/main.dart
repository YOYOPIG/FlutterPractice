import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
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
            Text(questions.elementAt(questionIndex)),
            RaisedButton(child: Text('Ans 1'), onPressed: answerQuestion),
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
