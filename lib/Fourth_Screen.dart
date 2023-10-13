import 'package:flutter/material.dart';
import 'Fifth_Screen.dart';

class Fourth_Screen extends StatelessWidget {
  const Fourth_Screen({super.key});

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
                  backgroundImage: AssetImage("asset/image1.jpg")
                ),
              ),
            ),
            Text(
              'We understand every skin type',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Your skin is unique, and so is our approach to skincare.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              child: MaterialButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Fifth_Screen()));
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
