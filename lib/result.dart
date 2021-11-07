import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;
  const Result({required this.score, required this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          "You scored $score points",
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: resetQuiz,
          child: Text("Reset Quiz"),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)), 
        ),
        ElevatedButton(onPressed: null, child:Text("This is for git purposes"),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.pink)
        ),)
      ]),
    );
  }
}
