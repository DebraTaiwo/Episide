import 'package:flutter/material.dart';
import 'package:epidise/Login_Screen.dart';

class Popout_Screen extends StatelessWidget {
  const Popout_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 300,
    width: double.infinity,
    padding: EdgeInsets.all(30.0),
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Text('Worried which is the best skincare for you?', textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10),
          Text(
              'We bring the best care to you for your Skin type. '
                  'Take a quick quiz to know more about your skin.', textAlign: TextAlign.justify, style: TextStyle(color: Colors.white, fontSize: 15),),
          SizedBox(height: 20),
          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.white,
            height: 50,
            minWidth: 300,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
            child: Text('CLICK HERE',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 15,
              ),),
          ),

        ],
      ),
    ),
      );
  }
}
