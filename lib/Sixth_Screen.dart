import 'package:flutter/material.dart';
import 'package:epidise/Skinproduct_Screen.dart';

class Sixth_Screen extends StatelessWidget {
  const Sixth_Screen({super.key});

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
                    backgroundImage: AssetImage("asset/image3.jpg")
                ),
              ),
            ),
            Text(
              'We use science to understand your skin.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Science-based skincare that\'s good for your skin and good for the planet.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              child: MaterialButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Skinproduct()));
              },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('GET STARTED',textAlign: TextAlign.center, style: TextStyle(
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
