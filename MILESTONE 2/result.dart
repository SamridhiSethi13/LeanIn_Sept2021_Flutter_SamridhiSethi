import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget {
  final int _sum;

  // ignore: use_key_in_widget_constructors
  const Result(this._sum);
  Widget res(int _sum) {
    if (_sum >= 10) {
      return const Text(
        "You Passed !!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green,
          fontSize: 40.0,
        ),
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        "You Failed !!",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.red, fontSize: 40.0),
        textAlign: TextAlign.center,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "GK QUIZ",
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.cyanAccent,
        ),
        backgroundColor: Colors.limeAccent,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 250, horizontal: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Score : ' + _sum.toString(),
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              res(_sum),
            ],
          ),
        ));
  }
}
