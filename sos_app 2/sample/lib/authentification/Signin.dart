import 'package:flutter/material.dart';
import 'package:sample/authentification/Login.dart';
class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Signin'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                "Signin",
                style: TextStyle(fontSize: 25, color: Colors.blue)
            ),

            Container(
              margin: EdgeInsets.fromLTRB(28,10,28,10), // Adjust the margin as needed
              child: TextField(
                decoration: InputDecoration(labelText: 'Email'),
               // obscureText: true,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(28,10,28,10), // Adjust the margin as needed
              child: TextField(
                decoration: InputDecoration(labelText: 'Full Name'),
               // obscureText: true,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(28,10,28,10), // Adjust the margin as needed
              child: TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(28,10,28,10), // Adjust the margin as needed
              child: TextField(
                decoration: InputDecoration(labelText: 'Confirm Password'),
               // obscureText: true,
              ),
            ),
            SizedBox(height: 4),
            ElevatedButton(
              onPressed: () {
                // Handle the login process
              },
              child: Text('Create Account'),
            ),
            SizedBox(height: 10),
            Text(
                "already have account"
            ),
            SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                // Handle the login process
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),);
  }
}