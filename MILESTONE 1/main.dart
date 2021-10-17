import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
//import 'images.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Gallery",
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  final _image = [
    Image.network(
      "https://images.pexels.com/photos/931177/pexels-photo-931177.jpeg?cs=srgb&dl=pexels-secret-garden-931177.jpg&fm=jpg",
      fit: BoxFit.fill,
    ),
    Image.network(
      "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      fit: BoxFit.fill,
    ),
    Image.network(
      "https://images.pexels.com/photos/992734/pexels-photo-992734.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      fit: BoxFit.fill,
    ),
    Image.network(
      "https://images.pexels.com/photos/462402/pexels-photo-462402.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      fit: BoxFit.fill,
    ),
    Image.network(
      "https://images.pexels.com/photos/1166869/pexels-photo-1166869.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      fit: BoxFit.fill,
    ),
  ];

  int im = 0;

  void increment() {
    setState(() {
      if (im <= _image.length - 2) {
        im++;
      } else {
        im = 0;
      }
    });
  }

  void decrement() {
    setState(() {
      if (im >= 1) {
        im--;
      } else {
        im = _image.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "SlideShow",
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.limeAccent,
        ),
        backgroundColor: Colors.indigo[800],
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(20.0, 20, 20, 20)),
            Container(
              child: _image[im],
              height: 500.0,
              width: 400.0,
            ),
            const SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      onPrimary: Colors.white,
                      elevation: 20.0,
                      shadowColor: Colors.limeAccent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20.0),
                    ),
                    onPressed: decrement,
                    icon: const Icon(Icons.arrow_back),
                    label: const Text(
                      "Previous",
                      style: TextStyle(fontSize: 25),
                    )),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      onPrimary: Colors.white,
                      elevation: 20.0,
                      shadowColor: Colors.limeAccent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20.0),
                    ),
                    onPressed: increment,
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text("Next", style: TextStyle(fontSize: 25))),
              ],
            )
          ],
        ));
  }
}
