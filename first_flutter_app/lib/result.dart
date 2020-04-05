import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _handler;

  Result(this._resultScore, this._handler);

  // a getter
  String get resultPhrase {
    String resultText;

    if (_resultScore <= 100) {
      resultText = 'You are...';
    } else if (_resultScore <= 120) {
      resultText = 'You are likeable.';
    } else {
      resultText = 'You are awesome.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: _handler,
          )
        ],
      ),
    );
  }
}
