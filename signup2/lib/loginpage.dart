import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'mainpage123.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              
              Navigator.pop(context);
            },
          ),
        ),
        body: LoginScreenWidget(),
      ),
    );
  }
}

class LoginScreenWidget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

 Future<void> loginUser(BuildContext context, String username, String password) async {
  
  final csrfToken = await getCsrfToken();

  final response = await http.post(
  Uri.parse('http://192.168.246.162:8000/api/login/'),
  headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'X-CSRF-Token': csrfToken,
  },
  body: jsonEncode(<String, String>{
    'username': username,
    'password': password,
  }),
);

  if (response.statusCode == 200) {
   
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Login successful!'),
        duration: Duration(seconds: 2), 
      ),
    );

    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Iphone14plus2Widget()),  
    );
  } else {
    
    print('Login failed');
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
        padding: EdgeInsets.only(top: 100.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Here',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildTextFieldWithBox('Username', usernameController),
            SizedBox(height: 20),
            _buildTextFieldWithBox('Password', passwordController, isPassword: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
                loginUser(
                  context,
                  usernameController.text,
                  passwordController.text,
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            
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
