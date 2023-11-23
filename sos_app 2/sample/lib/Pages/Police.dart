import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class PolicePage extends StatelessWidget {

  void _makeEmergencyCall() async {
    const url = 'tel:119'; // Change the number to the desired phone number
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
        title:const Text(
          'Police ',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('This is the Police Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _makeEmergencyCall,
        child: Icon(Icons.phone), // Changed the icon to phone
      ),
    );
  }
}