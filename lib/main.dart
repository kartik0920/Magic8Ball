import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Ask me Anything',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            backgroundColor: Colors.blue[800],
          ),
          body: TextButton(
            onPressed: () {
              setState(() {
                index = Random().nextInt(5) + 1;
              });
            },
            child: Center(
              child: Image.asset('images/ball$index.png'),
            ),
          ),
        ),
      ),
    );
  }
}
