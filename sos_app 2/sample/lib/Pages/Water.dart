import 'package:flutter/material.dart';

class WaterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'EMERGENCY SOS LandSlide ',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Text('Wateris the  Page'),
      ),
    );
  }
}