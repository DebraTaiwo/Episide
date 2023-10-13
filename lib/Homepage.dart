import 'package:flutter/material.dart';
import 'loading_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override

  void initState() {
    super.initState;
    _navigatetoLoading_Screen();
  }

  _navigatetoLoading_Screen() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loading_Screen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Expanded(child: Container(
      width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.teal,
                child: Text(
                  'EPIDISE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Text('Your Skin\'s Best Friend',textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white, fontSize: 20
            ),)
          ],
        ),
      ),
    ),
        ],
      ),
      // backgroundColor: Colors.teal,
          );
  }
}
