import 'package:flutter/material.dart';
import 'package:epidise/Popout_Screen.dart';

class Skinproduct extends StatelessWidget {
  const Skinproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.waving_hand, size: 15, color: Colors.white),
                        Text(
                          ' Hello Dearie!',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Ready to Take Charge of your Skincare Journey?',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.search, size: 15, color: Colors.grey),
                        hintText: 'Search \"oily skin products',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        suffixIcon:
                            Icon(Icons.qr_code, size: 15, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Exclusive Range of '
                        'Curated Skin Products '
                        'For You!',
                    textAlign: TextAlign.center, maxLines: 3,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    color: Colors.white,
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => Popout_Screen());
                    },
                    child: Text(
                      'AVAIL OFFER',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.teal, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(
              'RECOMMENDED FOR YOU',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.teal, letterSpacing: 1.0, fontSize: 12),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                child: Column(
                  children: [
                    Expanded(
                      child: AspectRatio(
                          aspectRatio: 4 / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage('asset/image3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 150,
                child: Column(
                  children: [
                    Expanded(
                      child: AspectRatio(
                          aspectRatio: 4 / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage('asset/image5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
