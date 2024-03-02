import 'package:flutter/material.dart';
import 'package:signup2/signup.dart';
import 'SecondPage.dart';
import 'language.dart';
import 'mainpage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'loginpage.dart';


void main() {
  runApp(
    MaterialApp(
      initialRoute: '/welcome', // Set the initial route
      routes: {
        '/welcome': (context) => Welcome(),
        '/secondpage': (context) => SecondPage(),
        '/signup': (context) => RegistrationPage(),
        '/login' : (context) => LoginPage(),
        
        
      },
    ),
  );
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
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
              top: 50,
              left: 50,
              child: Text(
                'Welcome to WalkAssist',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'SF Pro',
                  fontSize: 25,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 0.8333333333333334,
                ),
              ),
            ),Positioned(
              top: 90,
              left: 50,
              child: Text(
                'The Blind Sees Beyond !!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'SF Pro',
                  fontSize: 25,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 0.833333334,
                ),
              ),
            ),
            Positioned(
              top: 93,
              left: 103,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(),
                child: Stack(
                  children: <Widget>[],
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: -72,
              child: Container(
                width: 534,
                height: 400,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 2),
                      blurRadius: 2,    
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/new.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 560,
              left: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/secondpage');
                },
                child: Text("Get Started"),
              ),
            )
          ],
        ),
      ),
    );
  }
}