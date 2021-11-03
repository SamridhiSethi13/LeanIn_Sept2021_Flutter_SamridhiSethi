import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget {
  final int _sum;

  // ignore: use_key_in_widget_constructors
  const Result(this._sum);
  Widget res(int _sum)
  {
    if(_sum >= 10)
    {
      return const Text("You Passed !!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 40.0,), textAlign: TextAlign.center,);
    }
    else
    {
      return const Text("You Failed !!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 40.0),textAlign: TextAlign.center,);
    }      
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 80),
      child: Column(
        children: [
          Text(
            'Score : ' + _sum.toString(),
            style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          res(_sum),
        ],
      ),
    );
  }
}