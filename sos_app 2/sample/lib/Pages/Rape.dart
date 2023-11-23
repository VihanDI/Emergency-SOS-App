import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RapePage extends StatelessWidget {
  void _makeEmergencyCall() async {
    const url = 'tel:1929'; // Change the number to the desired phone number
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
          'Rape ',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('Rape is the  Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _makeEmergencyCall,
        child: Icon(Icons.phone), // Changed the icon to phone
      ),
    );
  }
}