import 'package:flutter/material.dart';
import 'package:epidise/login_details.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 300,
                child: Expanded(
                  child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: ClipRRect(
                        child: Image(
                          image: AssetImage('asset/image5.jpg'),
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white70,
                  alignment: AlignmentDirectional.topStart,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Dearie!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Get ready to make yourself glow!',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      SizedBox(height: 25),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.white70,
                        height: 50,
                        minWidth: 400,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.teal,
                        height: 50,
                        minWidth: 400,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login_details()));
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Center(
                          heightFactor: 3,
                          child: Text(
                            'OR',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Colors.white,
                              height: 50,
                              minWidth: 150,
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image: AssetImage('asset/fb.png'),
                                    height: 20,
                                  ),
                                  Text(
                                    '  FACEBOOK',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        letterSpacing: 1.5),
                                  )
                                ],
                              )),
                          MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Colors.white,
                              height: 50,
                              minWidth: 150,
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    image: AssetImage('asset/Google.png'),
                                    height: 20,
                                  ),
                                  Text(
                                    '  GOOGLE',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        letterSpacing: 1.5),
                                  )
                                ],
                              )),
                        ],
                      ),
                      SizedBox(height: 40),
                      Center(
                          child: Text(
                        'By continuing you agree to our',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10, color: Colors.brown),
                      )),
                      Center(
                          child: Text(
                        'Terms of service and Privacy policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.underline,
                            color: Colors.brown),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
