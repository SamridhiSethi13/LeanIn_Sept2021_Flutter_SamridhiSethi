import 'package:flutter/material.dart';
import 'questions.dart';
import 'frenchques.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void eng()
  {
    setState(() {
      const Questions();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GK QUIZ",
      debugShowCheckedModeBanner: false,
      home: Center(
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 15),
          child: Column(
              children: [
                const Text("Choose your preferred language.", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),  
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
                      onPressed: () => eng(), 
                      child: const Text("English", style: TextStyle(fontSize: 40.0,),),
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
                      onPressed: () => const FQuestions(), 
                      child: const Text("Français", style: TextStyle(fontSize: 40.0,),),
                ),
          ]
        ),  
        ),       
        backgroundColor: Colors.limeAccent,        
      ),
        )
    );
  }
}
/*
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GK QUIZ",
      debugShowCheckedModeBanner: false,
      home: Center(
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 15),
          child: Column(
              children: [
                const Text("Choose your preferred language.", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),  
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
                      onPressed: () => const Questions(), 
                      child: const Text("English", style: TextStyle(fontSize: 40.0,),),
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
                      onPressed: () => const FQuestions(), 
                      child: const Text("Français", style: TextStyle(fontSize: 40.0,),),
                ),
          ]
        ),  
        ),       
        backgroundColor: Colors.limeAccent,        
      ),
        )
    );
  }
}*/
