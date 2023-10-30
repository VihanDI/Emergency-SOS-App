import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FirePage extends StatelessWidget {
  void _makeEmergencyCall() async {
    const url = 'tel:911';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EMERGENCY SOS ',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is the Fire Emergency Page'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _makeEmergencyCall,
              child: Text('Call Emergency (911)'),
            ),
          ],
        ),
      ),
    );
  }
}