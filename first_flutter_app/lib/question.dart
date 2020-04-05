import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  // positional arguments
  Question(this._questionText);
  // named arguments
  // Question({ this.question });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container takes space based on its child
      // width: double.infinity + textAlign: TextAlign.center to center text
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _questionText,
        // To center text
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
