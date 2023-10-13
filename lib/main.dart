import 'package:epidise/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:epidise/Homepage.dart';


void main() {
  runApp(const Episide());
}

class Episide extends StatelessWidget {
  const Episide({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EPISIDE',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              bodyLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold))),
      home: Homepage(),
    );
  }
}
