import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'loginpage.dart';



class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registration Page'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back when the back arrow is pressed
              Navigator.pop(context);
            },
          ),
        ),
        body: RegisterScreenWidget(),
      ),
    );
  }
}

class RegisterScreenWidget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> registerUser(BuildContext context, String username, String email, String password) async {
    // Fetch CSRF token from your backend
    final csrfToken = await getCsrfToken();

    final response = await http.post(
      Uri.parse('http://192.168.246.162:8000/api/signup/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        // Include the CSRF token in the headers
        'X-CSRF-Token': csrfToken,
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Successful registration
      // Handle the response as needed
      print('Registration successful');

      // Show a dialog to inform the user about the successful registration
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Registration Successful'),
            content: Text('You have successfully registered.'),
            actions: <Widget>[
              TextButton(
            onPressed: () {
              // Navigate to the login page when OK is pressed
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text('OK'),
          ),
            ],
          );
        },
      );
    } else {
      // Handle registration error
      print('Registration failed');
    }
  }

  Future<String> getCsrfToken() async {
  try {
    final csrfResponse = await http.get(Uri.parse('http://192.168.246.162:8000/api/csrf/'));

    if (csrfResponse.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(csrfResponse.body);
      final csrfToken = data['csrfToken'];
      print('CSRF Token: $csrfToken');
      return csrfToken;
    } else {
      print('Failed to fetch CSRF token. Status Code: ${csrfResponse.statusCode}');
      print('Response Body: ${csrfResponse.body}');
      throw Exception('Failed to fetch CSRF token');
    }
  } catch (e) {
    print('Error during CSRF token fetch: $e');
    throw Exception('Failed to fetch CSRF token');
  }
}


   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100.0), // Add top padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register Here',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildTextFieldWithBox('Username', usernameController),
            SizedBox(height: 20),
            _buildTextFieldWithBox('Email', emailController),
            SizedBox(height: 20),
            _buildTextFieldWithBox('Password', passwordController, isPassword: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call your registration function here
                registerUser(
                  context,
                  usernameController.text,
                  emailController.text,
                  passwordController.text,
                );
              },
              child: Text('Register'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
    // Navigate back to the login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  },
              child: Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldWithBox(String label, TextEditingController controller, {bool isPassword = false}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
        ),
      ),
    );
  }
}
