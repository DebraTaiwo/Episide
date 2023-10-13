import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:epidise/SkinType1.dart';



class Loading_Screen2 extends StatefulWidget {
  const Loading_Screen2({super.key});

  @override
  State<Loading_Screen2> createState() => _Loading_Screen2State();
}

class _Loading_Screen2State extends State<Loading_Screen2> {
  @override

  void initState() {
    super.initState;
    _navigatetoSkinType1();
  }

  _navigatetoSkinType1() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SkinType1()));
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
          Text('LET\'S SET YOU UP', style: TextStyle(color: Colors.teal, fontSize: 12),)
        ],
      ),
    );
  }
}
