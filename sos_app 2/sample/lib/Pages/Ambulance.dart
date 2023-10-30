import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AmbulancePage extends StatelessWidget {
  void _makeEmergencyCall() async {
    const url = 'tel:1990'; // Change the number to '1990'
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
          'EMERGENCY SOS Ambulance',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('This is the Ambulance Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _makeEmergencyCall,
        child: Icon(Icons.phone), // Changed the icon to phone
      ),
    );
  }
}