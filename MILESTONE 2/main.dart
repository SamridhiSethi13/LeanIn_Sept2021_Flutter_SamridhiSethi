import 'package:flutter/material.dart';
import 'questions.dart';
import 'frenchques.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "GK QUIZ",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
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
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 15),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Choose your preferred language.",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              onPrimary: Colors.white,
              elevation: 20.0,
              shadowColor: Colors.cyanAccent,
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 29.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => const Questions()),
              );
            },
            child: const Text(
              "English",
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              onPrimary: Colors.white,
              elevation: 20.0,
              shadowColor: Colors.cyanAccent,
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => const FQuestions()),
              );
            },
            child: const Text(
              "Français",
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
