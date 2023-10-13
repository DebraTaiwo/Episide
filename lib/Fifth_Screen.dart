import 'package:flutter/material.dart';
import 'package:epidise/Sixth_Screen.dart';


class Fifth_Screen extends StatelessWidget {
  const Fifth_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(radius: 150,
                backgroundColor: Colors.teal,
                child: CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage("asset/image2.jpg")
                ),
              ),
            ),
            Text(
              'Simple access to remote demartology support',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Get the care you need where you need it from the comfort of your home.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sixth_Screen()));
              },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('CONTINUE',textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.white, fontSize: 15,),),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.teal,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
