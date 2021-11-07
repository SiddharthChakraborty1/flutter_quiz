// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/result.dart';
import './answer.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questionList = const [
    {
      'question': 'What\'s your favourite color',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 8},
        {'text': 'blue', 'score': 5},
        {'text': 'whte', 'score': 1},
      ],
    },
    {
      'question': 'What\'s your favourite animal',
      'answers': [
        {'text': 'dog', 'score': 1},
        {'text': 'cat', 'score': 2},
        {'text': 'rabbit', 'score': 5},
        {'text': 'hamster', 'score': 9},
      ],
    },
    {
      'question': 'What\'s your favourite weather',
      'answers': [
        {'text': 'sunny', 'score': 10},
        {'text': 'red', 'score': 8},
        {'text': 'blue', 'score': 5},
        {'text': 'whte', 'score': 1},
      ],
    },
  ];
  void _answerPressed(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questionList.length) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
      }
    });
    print(_questionIndex);
  }

  void _resteQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: _questionIndex < _questionList.length
          ? Quiz(
              answerPressed: _answerPressed,
              questionIndex: _questionIndex,
              questionList: _questionList,
            )
          : Result(score: _totalScore, resetQuiz: _resteQuiz,),
    ));
  }
}
