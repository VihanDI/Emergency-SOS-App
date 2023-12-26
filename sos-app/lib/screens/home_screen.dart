import 'package:flutter/material.dart';
import 'disaster_category_screen.dart';
import '../widgets/app_bar.dart';
import './login_screeen.dart';
import './add_number_screen.dart';
import './emergency_contact_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: MyAppBar(
            iconType: Icons.logout_outlined,
            onPressed: () {
              navigateToPage(context, const LoginScreen());
            },
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const RoundedContainerTypeOne(height: 168.1),
              const RoundedContainerTypeTwo(height: 90.05),
              const RoundedContainerTypeThree(height: 90.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularIconButton(
                    icon: Icons.call,
                    size: 60,
                    iconSize: 35,
                    onPressed: () {
                      navigateToPage(context, const DisasterCategoryScreen());
                    },
                  ),
                ],
              )
            ],
          )),
        ));
  }
}

class RoundedContainerTypeOne extends StatelessWidget {
  final double height;

  const RoundedContainerTypeOne({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: height, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.blue, // Set the background color
        borderRadius: BorderRadius.circular(
            10.0), // Set the border radius for the outer container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set the shadow color
            spreadRadius: 1, // Set the spread radius of the shadow
            blurRadius: 5, // Set the blur radius of the shadow
            offset: const Offset(
                0, 4), // Negative offset to shift the shadow upward
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2, // 75% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFF6B6B), // Set the color for the left column
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      10.0), // Set rounded corners for the top-left
                  bottomLeft: Radius.circular(
                      10.0), // Set rounded corners for the bottom-left
                ),
              ),
              child: const Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Colombo",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w400),
                      ),
                      Icon(Icons.thunderstorm_outlined)
                    ],
                  ),
                  Text(
                    "23 October 2023",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Monday",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  )
                ],
              )),
            ),
          ),
          Expanded(
            flex: 1, // 25% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFC0C0), // Set the color for the right column
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                      10.0), // Set rounded corners for the top-right
                  bottomRight: Radius.circular(
                      10.0), // Set rounded corners for the bottom-right
                ),
              ),
              child: const Center(
                  child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.error_outline),
                    Text(
                      "Alert Level",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "High",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedContainerTypeTwo extends StatelessWidget {
  final double height;

  const RoundedContainerTypeTwo({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: height, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.blue, // Set the background color
        borderRadius: BorderRadius.circular(
            10.0), // Set the border radius for the outer container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set the shadow color
            spreadRadius: 1, // Set the spread radius of the shadow
            blurRadius: 5, // Set the blur radius of the shadow
            offset: const Offset(
                0, 4), // Negative offset to shift the shadow upward
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3, // 75% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFF6B6B), // Set the color for the left column
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      10.0), // Set rounded corners for the top-left
                  bottomLeft: Radius.circular(
                      10.0), // Set rounded corners for the bottom-left
                ),
              ),
              child: const Center(
                child: Text(
                  'Add Emergency Number',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1, // 25% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFC0C0), // Set the color for the right column
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                      10.0), // Set rounded corners for the top-right
                  bottomRight: Radius.circular(
                      10.0), // Set rounded corners for the bottom-right
                ),
              ),
              child: Center(
                  child: CircularIconButton(
                icon: Icons.add,
                size: 30,
                iconSize: 15,
                onPressed: () {
                  navigateToPage(context, const AddNumberScreen());
                },
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedContainerTypeThree extends StatelessWidget {
  final double height;

  const RoundedContainerTypeThree({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: height, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.blue, // Set the background color
        borderRadius: BorderRadius.circular(
            10.0), // Set the border radius for the outer container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set the shadow color
            spreadRadius: 1, // Set the spread radius of the shadow
            blurRadius: 5, // Set the blur radius of the shadow
            offset: const Offset(
                0, 4), // Negative offset to shift the shadow upward
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3, // 75% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFF6B6B), // Set the color for the left column
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      10.0), // Set rounded corners for the top-left
                  bottomLeft: Radius.circular(
                      10.0), // Set rounded corners for the bottom-left
                ),
              ),
              child: const Center(
                child: Text(
                  'Call Emergency Number',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1, // 25% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFC0C0), // Set the color for the right column
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                      10.0), // Set rounded corners for the top-right
                  bottomRight: Radius.circular(
                      10.0), // Set rounded corners for the bottom-right
                ),
              ),
              child: Center(
                  child: CircularIconButton(
                icon: Icons.call,
                size: 30,
                iconSize: 15,
                onPressed: () {
                  navigateToPage(context, const EmergencyContactScreen());
                },
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final double iconSize;
  final VoidCallback onPressed;

  const CircularIconButton(
      {super.key,
      required this.icon,
      required this.size,
      required this.iconSize,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size, // Adjust the width as needed
      height: size, // Adjust the height as needed
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          )
        ],
        color: const Color(
            0xFFCA3333), // Set the background color for the circular icon button
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.black,
          size: iconSize, // Set the icon color for the circular icon button
        ),
        alignment: Alignment.center,
        onPressed: onPressed,
      ),
    );
  }
}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
