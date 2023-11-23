import 'package:flutter/material.dart';

class AddEmergencyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text('Add Emergency number'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                "ADD the contact",
                style: TextStyle(fontSize: 25, color: Colors.blue)
            ),

            Container(
              margin: EdgeInsets.fromLTRB(28,10,28,10), // Adjust the margin as needed
              child: TextField(
                decoration: InputDecoration(labelText: 'Name'),
                //obscureText: true,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(28,10,28,10), // Adjust the margin as needed
              child: const TextField(
                decoration: InputDecoration(labelText: 'Realation'),
                //obscureText: true,
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(28,10,28,10), // Adjust the margin as needed
              child: const TextField(
                decoration: InputDecoration(labelText: 'Contact NO'),
                //obscureText: true,
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(28,10,28,10), // Adjust the margin as needed
              child: const TextField(
                decoration: InputDecoration(labelText: 'Other No'),
                //obscureText: true,
              ),
            ),
            const SizedBox(height: 4),
            ElevatedButton(
              onPressed: () {
                // Handle the login process
              },
              child: const Text('Add Contact'),
            ),
            SizedBox(height: 10),
            const Text(
                "already have account"
            ),

          ],
        ),
      ),);
  }

  }
