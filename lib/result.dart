import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resethandler;

  Result(this.resultScore, this.resethandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awsome and Innocent';
    } else if (resultScore <= 12) {
      resultText = 'Preety Likeable!!';
    } else if (resultScore <= 16) {
      resultText = 'You Are .... Strange';
    } else {
      resultText = 'Not Good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            onPressed: () => resethandler(),
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
