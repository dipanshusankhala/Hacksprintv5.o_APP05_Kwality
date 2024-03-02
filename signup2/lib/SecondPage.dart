import 'package:flutter/material.dart';
import 'package:signup2/loginpage.dart';
import 'signup.dart';
import 'loginpage.dart';
class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -20,
              left: 20,
              child: Image.asset('assets/second.jpeg'),
              height: 500, // Set the desired height
              width: 300, 
            ),
            Positioned(
              top: 823,
              left: 0,
              child: Container(),
            ),
            Positioned(
              top: 93,
              left: 103,
              child: Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(),
                child: Stack(
                  children: <Widget>[],
                ),
              ),
            ),
            Positioned(
              top: 778,
              left: -3,
              child: Container(),
            ),
            Positioned(
              top: 447,
              left: 65,
              child: Container(
                width: 260,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                  color: Color.fromRGBO(160, 160, 160, 0.82),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 566,
              left: 65,
              child: Container(
                width: 260,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                  color: Color.fromRGBO(160, 160, 160, 0.82),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 576,
              left: 145,
              child: InkWell(
                onTap: () {
                  // Navigate to the new user page
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                },
                child: Text(
                  'I am a new user',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'SF Pro',
                    fontSize: 20,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.25,
                  ),
                  
                ),
              ),
            ),
            Positioned(
              top: 457,
              left: 130,
              child: InkWell(
                onTap: () {
                  // Navigate to the existing user page
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'I am an existing user',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'SF Pro',
                    fontSize: 20,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.25,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 93,
              left: 74,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}


