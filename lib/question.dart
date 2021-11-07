import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesionText;

  Question(this.quesionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        quesionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
