import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_app/screens/disaster_category_screen.dart';
import 'package:flutter_app/screens/sign_out_screen.dart';

class MyNavBar extends StatelessWidget implements PreferredSizeWidget {
  const MyNavBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        color: const Color(0xFFFF4545),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          switch (index) {
            // case 0:
            //   navigateToPage(context, const HomeScreen());
            //   break;
            case 0:
              navigateToPage(context, const DisasterCategoryScreen());
              break;
            case 1:
              _showOptionsPopup(context);
              break;
          }
        },
        items: const [
          // Icon(
          //   Icons.home,
          // ),
          Icon(
            Icons.call,
          ),
          Icon(
            Icons.logout,
          ),
        ]);
  }
}

Future<void> _showOptionsPopup(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Are sure you want to logout ?',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the popup
              navigateToPage(context, const SignOut());
            },
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            }, // Close the popup
            child: const Text('No'),
          ),
        ],
      );
    },
  );
}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
