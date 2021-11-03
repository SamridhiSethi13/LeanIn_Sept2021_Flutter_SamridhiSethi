import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_app/result.dart';
import 'result.dart';

class FQuestions extends StatefulWidget {
  const FQuestions({ Key? key }) : super(key: key);

  @override
  _FQuestionsState createState() => _FQuestionsState();
}

class _FQuestionsState extends State<FQuestions> {
  final List<String> _ques = [
    'La France est divisée en 27 régions.',
    'La Loire est le fleuve qui traverse Paris.',
    'La Bourgogne est un fromage française.',
    'La fête nationale célébrée le 14 juillet commémore la Révolution française.',
    'Le coq est le symbole de la France.',
    "La tour Eiffel n'est pas un monument français.",
    "François Hollande est le président de la France.",
    'Un francophone est une personne qui parle français.',
    'Paris est née sur une montagne.',
    'Le drapeau français a 2 couleurs.',
  ];

  final List<bool> _val = [
    true,
    false,
    false,
    true,
    true,
    false,
    true,
    true,
    false,
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
                  child: const Text("Vrai", style: TextStyle(fontSize: 40.0,),),
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
                  child: const Text("Faux", style: TextStyle(fontSize: 40.0,),),
                    ),
      ]    
    )
    );
  }
}