import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import './home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyContactScreen extends StatelessWidget {
  const EmergencyContactScreen({super.key});

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
                  1, // Automatically determine the number of columns
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio:
                  6.0, // Adjust the aspect ratio based on your design
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return GridItem(
                relation: data[index]['relation'],
                number: data[index]['number'],
              );
            },
          ),
        ));
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
    'name': 'Tom Black',
    'relation': 'Boarding place uncle',
    'number': '070 7654321'
  },
  {
    'name': 'Anne Fox',
    'relation': 'Boarding place aunty',
    'number': '070 7654321'
  },
  {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
  {'name': 'Anne Fox', 'relation': 'Mother', 'number': '070 7654321'},
];

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
