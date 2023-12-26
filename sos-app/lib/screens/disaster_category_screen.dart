import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import './home_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';

class DisasterCategoryScreen extends StatelessWidget {
  const DisasterCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          iconType: Icons.arrow_back,
          onPressed: () {
            navigateToPage(context, const HomeScreen());
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  2, // Automatically determine the number of columns
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio:
                  1.0, // Adjust the aspect ratio based on your design
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return GridItem(
                name: data[index]['name'],
                icon: data[index]['icon'],
                telNumber: data[index]['telNumber'],
              );
            },
          ),
        ));
  }
}

class GridItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final String telNumber;

  const GridItem(
      {super.key,
      required this.name,
      required this.icon,
      required this.telNumber});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showOptionsPopup(context, telNumber, name);
      },
      child: Container(
        width: 100.0,
        height: 150.0,
        decoration: BoxDecoration(
          color: const Color(0xFFFFC0C0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 50.0,
              color: Colors.black,
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showOptionsPopup(
    BuildContext context, String telNumber, String disasterType) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Call or Send Message'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the popup
              _handleOptionSelected(context, 'call', telNumber, disasterType);
            },
            child: const Text('Call'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the popup
              _handleOptionSelected(
                  context, 'message', telNumber, disasterType);
            },
            child: const Text('Message'),
          ),
        ],
      );
    },
  );
}

void _handleOptionSelected(BuildContext context, String option,
    String telNumber, String disasterType) {
  // Implement your logic based on the selected option
  // print('Selected option: $option');
  if (option == 'call') {
    launch("tel://$telNumber");
  } else {
    _composeMessageWithLocation(disasterType, telNumber);
  }
}

// Sample data with different names and icons
List<Map<String, dynamic>> data = [
  {'name': 'Fire', 'icon': Icons.fire_extinguisher, 'telNumber': '111'},
  {'name': 'Health', 'icon': Icons.healing, 'telNumber': '112'},
  {'name': 'Ambulance', 'icon': Icons.medical_information, 'telNumber': '113'},
  {'name': 'Electricity', 'icon': Icons.power, 'telNumber': '114'},
  {'name': 'Water Board', 'icon': Icons.water, 'telNumber': '115'},
  {'name': 'Crime', 'icon': Icons.local_police, 'telNumber': '116'},
  {'name': 'Wildlife', 'icon': Icons.grass, 'telNumber': '117'},
  {'name': 'Disasters', 'icon': Icons.tsunami, 'telNumber': '118'},
  {'name': 'Rape', 'icon': Icons.child_care, 'telNumber': '119'},
  {'name': 'Bomb', 'icon': Icons.warning, 'telNumber': '110'}
];

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

Future<void> _composeMessageWithLocation(
    String disasterType, String receiverNumber) async {
  // Get the current location
  // await Geolocator.requestPermission();
  // LocationPermission permission;

  await Geolocator.isLocationServiceEnabled();
  await Geolocator.requestPermission();

  // permission = await Geolocator.checkPermission();
  // if (permission == LocationPermission.denied) {
  //   permission = await Geolocator.requestPermission();
  //   if (permission == LocationPermission.denied) {
  //     return Future.error('Location permissions are denied');
  //   }
  // }

  // if (permission == LocationPermission.deniedForever) {
  //   return Future.error(
  //       'Location permissions are permanently denied, we cannot request permissions.');
  // }

  Position position = await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  );

  // Compose the message with location information
  String message =
      'Emergency category: $disasterType \nThis is an emergency message \nPlease send help \nMy current location is: '
      '\nLatitude: ${position.latitude}, \nLongitude: ${position.longitude}';

  // Launch the messaging app with the pre-filled message
  String uri = 'sms:$receiverNumber?body=${Uri.encodeComponent(message)}';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    print('Could not launch messaging app.');
  }
}
