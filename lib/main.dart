import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static String imgpath = 'images/dice1.png';
  static String inttoString = '';
  String diceroll() {
    setState(() {
      var rng = new Random();
      int a = rng.nextInt(6) + 1;

      inttoString = a.toString();
      imgpath = 'images/dice' + inttoString + '.png';
      print(imgpath);
    });

    return imgpath;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text('DICE'),
            centerTitle: true,
          ),
          body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
            child: GestureDetector(
              onTap: diceroll,
              child: Column(
                children: [
                  Text(
                    'DICE',
                    style: TextStyle(color: Colors.redAccent, fontSize: 30),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    '$imgpath',
                    width: 100,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    color: Colors.redAccent,
                    onPressed: diceroll,
                    child: Text(
                      'Roll Dice',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Text(
                    '$inttoString',
                    style: TextStyle(color: Colors.redAccent, fontSize: 40),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
