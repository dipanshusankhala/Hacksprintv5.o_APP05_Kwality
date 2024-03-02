import 'package:flutter/material.dart';
import 'Feedback.dart';


class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Please select the language of your choice',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'SF Pro',
                  fontSize: 27,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 0.9259259259259259,
                ),
              ),
            ),
            LanguageButton('English', context),
            LanguageButton('Hindi', context),
            LanguageButton('Marathi', context),
            SizedBox(height: 20), // Add some spacing
             Positioned(
              top: 650,
              left: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FeedbackWidget()));
                },
                child: Text("Next"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  final String language;
  final BuildContext context;

  LanguageButton(this.language, this.context);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
          color: Color.fromRGBO(209, 210, 217, 0.6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            language,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Inter',
              fontSize: 23,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1.0869565217391304,
            ),
          ),
        ),
      ),
    );
  }
}
