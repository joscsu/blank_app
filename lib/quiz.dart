import 'package:flutter/material.dart';

import './question.dart';
import 'package:blank_app/answer.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function questionAnswered;
  final int questionIndex;

  Quiz({this.questions, this.questionAnswered, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(answer, questionAnswered, (questions[questionIndex]['answers'] as List<String>).indexOf(answer),);
            })
          ],
        );
  }
}