import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerPressed;

  Quiz(
      {required this.questionList,
      required this.questionIndex,
      required this.answerPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[questionIndex]['question'] as String),
        ...(questionList[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerPressed(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
