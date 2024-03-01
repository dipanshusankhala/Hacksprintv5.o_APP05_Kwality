import 'package:flutter/material.dart';

class FeedbackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back when the back arrow is pressed
            Navigator.pop(context);
          },
        ),
        title: Text('Feedback'),
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
              top: 248,
              left: 32,
              child: Container(
                width: 326,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(255, 254, 254, 1),
                  border: Border.all(
                    color: Color.fromRGBO(199, 198, 198, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 374,
              left: 30,
              child: Container(
                width: 326,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(255, 254, 254, 1),
                  border: Border.all(
                    color: Color.fromRGBO(199, 198, 198, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -3,
              child: Container(),
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
                height: 100,
                decoration: BoxDecoration(),
                child: Stack(
                  children: <Widget>[],
                ),
              ),
            ),
            Positioned(
              top: 132,
              left: 24,
              child: Text(
                'Please share your experience with us',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'SF Pro',
                  fontSize: 18,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 702,
              left: 67,
              child: Container(
                decoration: BoxDecoration(),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Cancel',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 150, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            offset: Offset(1, 2),
                            blurRadius: 2,
                          )
                        ],
                        color: Color.fromRGBO(0, 150, 255, 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 7),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'SUBMIT',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 219,
              left: 24,
              child: Text(
                'Name',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'SF Pro',
                  fontSize: 15,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 345,
              left: 24,
              child: Text(
                'Email Address',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'SF Pro',
                  fontSize: 15,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 264,
              left: 130,
              child: Text(
                'Enter your name',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontFamily: 'SF Pro',
                  fontSize: 15,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 395,
              left: 82,
              child: Text(
                'Enter your email address',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontFamily: 'SF Pro',
                  fontSize: 15,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 501,
              left: 30,
              child: Container(
                width: 326,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(151, 151, 151, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 521,
              left: 53,
              child: Text(
                'Add your comments..',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
