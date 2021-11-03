import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_app/result.dart';
import 'result.dart';

class Questions extends StatefulWidget {
  const Questions({ Key? key }) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final List<String> _ques = [
    'Goa is famous for not producing coconut.',
    'Polo was originate in Assam.',
    'The Khalsa was born in 1699.',
    'Lata Mangeshkar won the Padma Bhushan in 1960.',
    'Shakespare wrote 37 plays.',
    'Baseball originated in Australia.',
    "Ostrich's eyes are smaller than its brain.",
    'The Ramayana was written by Tulsidas.',
    'Nakshatras are 27 in number.',
    'Sunderban in West Bengal is famous for elephants.',
  ];

  final List<bool> _val = [
    true,
    false,
    true,
    false,
    true,
    false,
    false,
    false,
    true,
    false,
  ];

  int _index = 0;
  int _sum = 0;

  void _answer(bool score) {
    if (_index < 10)
    {
      if(score == _val[_index])
      {
          _sum += 3;
      }
      else{
        _sum -= 1;
      }
    }
    setState(() => _index++);
  }

  @override
  Widget build(BuildContext context) {
    return (_index >= 10)
    ?Result(_sum):Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 15),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_ques[_index], style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
        const SizedBox(height: 60.0,),
        ElevatedButton(
                  style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          onPrimary: Colors.white,
                          elevation: 20.0,
                          shadowColor: Colors.cyanAccent,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 29.0),
                        ),
                  onPressed: () => _answer(true), 
                  child: const Text("True", style: TextStyle(fontSize: 40.0,),),
                    ),
        const SizedBox(height: 30.0,),
        ElevatedButton(
                  style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          onPrimary: Colors.white,
                          elevation: 20.0,
                          shadowColor: Colors.cyanAccent,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                        ),
                  onPressed: () => _answer(false), 
                  child: const Text("False", style: TextStyle(fontSize: 40.0,),),
                    ),
      ]    
    )
    );
  }
}