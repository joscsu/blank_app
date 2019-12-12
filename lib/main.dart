import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
    var _questionIndex = 0;
    final _questions = [
      {
        'questionText' : 'Favourite colour?',
        'answers' : ['Blue', 'Green', 'Red', 'Yellow']
      },
      {
        'questionText' : 'Favourite animal?',
        'answers' : ['Rabbit', 'Lion', 'Cat', 'Dog']
      },
      {
        'questionText' : 'Favourite actor?',
        'answers' : ['Schwarzenegger', 'Streep', 'Roberts', 'De Niro']
      }
      ];

    void _questionAnswered(int index) {
      print('questionindex $_questionIndex, index $index');
        setState(() {
         _questionIndex = _questionIndex + 1;
        });
    }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mein Superquiz'),
        ),
        body: _questionIndex < _questions.length ? Quiz(questions: _questions, questionAnswered: _questionAnswered, questionIndex: _questionIndex,) : Result(message: 'Yes, you did it!',),
      ),
    );
  }
}
