import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import './home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyContactScreen extends StatelessWidget {
  const EmergencyContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: MyAppBar(
        iconType: Icons.arrow_back,
        onPressed: () {
          navigateToPage(context, const HomeScreen());
        },
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> contact = data[index];
          return ListTile(
            title: Text(
              contact['name'],
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            subtitle: Text(contact['relation']),
            trailing: IconButton(
              icon: const Icon(Icons.phone),
              // onPressed: () => launch("tel://$toString()(contact['number'])"),
              onPressed: () => callNumber(contact['number']),
            ),
          );
        },
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String relation;
  final String number;

  const GridItem({super.key, required this.relation, required this.number});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch("tel://$number"),
      child: Container(
          width: 100.0,
          height: 150.0,
          decoration: BoxDecoration(
            color: const Color(0xFFFFC0C0),
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      relation,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                  // Text(
                  //   number,
                  //   style: const TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 18,
                  //       fontWeight: FontWeight.w400),
                  // ),
                ],
              ),
            ],
          )),
    );
  }
}

// Sample data with different names and icons
List<Map<String, dynamic>> data = [
  {'name': 'Tom Black', 'relation': 'Father', 'number': '077 1234567'},
  {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  {
    'name': 'James Silver',
    'relation': 'Boarding place uncle',
    'number': '070 7654321'
  },
  {
    'name': 'Mary Grace',
    'relation': 'Boarding place aunty',
    'number': '070 7654321'
  },
  // {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  // {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  // {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  // {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  // {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  // {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
];

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

void callNumber(String number) {
  launch("tel://$number");
}
