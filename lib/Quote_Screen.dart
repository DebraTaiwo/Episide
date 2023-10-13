import 'package:flutter/material.dart';
import 'package:epidise/Fourth_Screen.dart';

class Quote_Screen extends StatefulWidget {
  const Quote_Screen({super.key});

  @override
  State<Quote_Screen> createState() => _Quote_ScreenState();
}

class _Quote_ScreenState extends State<Quote_Screen> {
  @override

  void initState() {
    super.initState;
    _navigatetoFourth_Screen();
  }

  _navigatetoFourth_Screen() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Fourth_Screen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\"Skincare is not superficial because it\'s healthcare. When you have a beautiful skin it\'s a '
              'sign that you have a healthy mind and body\".', textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(' - DR. MURAD',textAlign: TextAlign.center, style: TextStyle(fontSize: 15, color: Colors.white), )
          ],
        ),
      ),
    );
  }
}
