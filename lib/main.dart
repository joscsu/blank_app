import 'package:blank_app/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';

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
        body: _questionIndex < _questions.length ? Column(
          children: <Widget>[
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(answer, _questionAnswered, (_questions[_questionIndex]['answers'] as List<String>).indexOf(answer));
            })
          ],
        ) : Center(child: Text('Yes, you did it.'),),
      ),
    );
  }
}
