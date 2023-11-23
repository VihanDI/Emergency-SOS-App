import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class WaterPage extends StatelessWidget {
  void _makeEmergencyCall() async {
    const url = 'tel:+94112638999'; // Change the number to the desired phone number
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
          'Water SOS ',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: const Center(
        child: Text('Water is the  Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _makeEmergencyCall,
        child: Icon(Icons.phone), // Changed the icon to phone
      ),
    );
  }
}