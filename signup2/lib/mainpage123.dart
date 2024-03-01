import 'package:flutter/material.dart';

class Iphone14plus2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Object Detection'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: 428,
        height: 926,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 428,
                height: 926,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(),
                    ),
                    Positioned(
                      top: 902,
                      left: 0,
                      child: Container(),
                    ),
                    Positioned(
                      top: 100,
                      left: 35,
                      child: Container(
                        width: 288,
                        height: 285,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/Navigate1.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 35,
                      child: Container(
                        width: 288,
                        height: 285,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          // Removed the BoxShadow
                          color: Color.fromRGBO(217, 217, 217, 0),
                          border: Border.all(
                            color: Color.fromRGBO(209, 210, 217, 1),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    // Positioned widget for 'vector.svg' removed here
                    Positioned(
                      top: 450,
                      left: 71,
                      child: Container(
                        width: 230,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Color.fromRGBO(60, 117, 241, 0.784),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 470,
                      left: 130,
                      child: Text(
                        'Navigate',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Germania One',
                          fontSize: 35,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 0.6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
