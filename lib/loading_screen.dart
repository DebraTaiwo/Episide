import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:epidise/Quote_Screen.dart';


class Loading_Screen extends StatefulWidget {
  const Loading_Screen({super.key});

  @override
  State<Loading_Screen> createState() => _Loading_ScreenState();
}

class _Loading_ScreenState extends State<Loading_Screen> {
  @override

  void initState() {
    super.initState;
    _navigatetoQuote_Screen();
  }

  _navigatetoQuote_Screen() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Quote_Screen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Loading...', style: TextStyle(color: Colors.teal, fontSize: 15),),
          Container(
            child: SpinKitThreeBounce(
              size: 30,
                duration: Duration(seconds: 3),
              itemBuilder: (context, index) {
                final colors = [Colors.teal];
                    final color = colors[index% colors.length];
                    return DecoratedBox(decoration: BoxDecoration(color: color));
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.phone_android),
              Text('SHAKE THE SCREEN TO INTERACT!', style: TextStyle(color: Colors.teal, fontSize: 12),)
            ],
          )
        ],
      ),
    );
  }
}
