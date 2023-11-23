import 'package:flutter/material.dart';
import 'Signin.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Login'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                "Login",
                style: TextStyle(fontSize: 25, color: Colors.blue)
            ),

            Container(
              margin: EdgeInsets.all(28), // Adjust the margin as needed
              child: TextField(
                decoration: InputDecoration(labelText: 'Email'),
                //obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(28), // Adjust the margin as needed
              child: TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle the login process
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16),
            Text(
                "Don't have account"
            ),
            SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                // Handle the login process
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SigninPage()),
                );
              },
              child: Text('Signin'),
            ),
          ],
        ),
      ),);
  }
}