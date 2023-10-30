import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'Pages/Fire.dart'; // Import the FireEmergencyPage
import 'Pages/Ambulance.dart'; // Import other category pages
import 'Pages/Land_Slide.dart';
//import 'Pages/Land slide.dart';
import 'Pages/Flood.dart';
import 'Pages/Rape.dart';
import 'Pages/Electricity.dart';
import 'Pages/Water.dart';
import 'Pages/Police.dart';
import 'Pages/Bomb.dart';
import 'Pages/Hospital.dart';

// Import other pages as needed


void main() {
  runApp(MaterialApp( // Wrap your app with MaterialApp
    home: EmergencySOS(),
  ));
}
// Define the pageMap here
Map<String, StatelessWidget> pageMap = {
  'Fire': FirePage(),
  'Ambulance': AmbulancePage(),
  'Land_slide': LandSlidePage(),
  'Flood': FloodPage(),
  'Rape': RapePage(),
  'Electricity': ElectricityPage(),
  'Water': WaterPage(),
  'Police': PolicePage(),
  'Bomb': BombPage(),
  'Hospital': HospitalPage(),
};

class EmergencySOS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EMERGENCY SOS',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/background_image3.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              createButton(context,'Fire', Colors.orangeAccent.withOpacity(0.8), 'Call 911 for fire emergencies.', FirePage()),
              createButton(context,'Ambulance', Colors.pink.withOpacity(0.8), 'Dial 1990 for medical emergencies.',AmbulancePage()),
              createButton(context,'Land Slide', Colors.purple.withOpacity(0.8), 'Seek shelter and stay safe. and call +94 112 588 946',LandSlidePage()),
              createButton(context,'Flood', Colors.blue.withOpacity(0.8), 'Move to higher ground.and call 117',FloodPage()),
              createButton(context,'Rape', Colors.yellow.withOpacity(0.8), 'Call the police immediately.119 or 1929',RapePage()),
              createButton(context,'Electricity', Colors.green.withOpacity(0.8), 'Contact your utility company.',ElectricityPage()),
              createButton(context,'Water', Colors.blueAccent.withOpacity(0.8), 'Check water sources for contamination.',WaterPage()),
              createButton(context,'Police', Colors.redAccent.withOpacity(0.8), 'Dial 119 or 118 for police assistance.',PolicePage()),
              createButton(context,'Bomb', Colors.black.withOpacity(0.8), 'Evacuate the area and call 119.',BombPage()),
              createButton(context,'Hospital', Colors.brown.withOpacity(0.8), 'Visit the nearest hospital for medical help. or call 1990 ',HospitalPage()),
            ],
              // ... (other buttons)

          ),
        ],
      ),
    );
  }

  Widget createButton(BuildContext context, String title, Color color, String details, StatelessWidget page) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () {
            // Navigate to the specified category page when the button is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }


  void showDetailsDialog(BuildContext context, String title, String details) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(details),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
