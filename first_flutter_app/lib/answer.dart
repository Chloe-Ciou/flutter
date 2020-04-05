import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String _answerText;
  final Function _handler;

  Answer(this._answerText, this._handler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answerText),
        onPressed: _handler,
      ),
    );
  }
}
