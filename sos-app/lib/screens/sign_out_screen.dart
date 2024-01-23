import 'package:flutter/material.dart';
import 'package:flutter_app/auth_gate.dart';
import 'package:flutter_app/widgets/app_bar_default.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarDefault(),
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.person),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute<ProfileScreen>(
      //             builder: (context) => ProfileScreen(
      //               appBar: AppBar(
      //                 title: const Text('User Profile'),
      //               ),
      //               actions: [
      //                 SignedOutAction((context) {
      //                   Navigator.of(context).pop();
      //                 })
      //               ],
      //               // children: [
      //               //   const Divider(),
      //               //   Padding(
      //               //     padding: const EdgeInsets.all(2),
      //               //     child: AspectRatio(
      //               //       aspectRatio: 1,
      //               //       child: Image.asset(
      //               //         'assets/profile.png',
      //               //         width: 200,
      //               //       ),
      //               //     ),
      //               //   ),
      //               // ],
      //             ),
      //           ),
      //         );
      //       },
      //     )
      //   ],
      //   automaticallyImplyLeading: false,
      // ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Image.asset(
                'assets/signin.png',
                width: 300,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Bye See you Later !',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                navigateToPage(context, const AuthGate());
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color(0xFFFF6B6B),
                padding: const EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 24.0), // Set padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Set the border radius
                  side: const BorderSide(
                    color: Color(0xFFFF6B6B), // Set the border color
                    width: 0, // Set the border width
                  ),
                ),
              ),
              child: const Text('Sign Out',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            ),
            // const SignOutButton(),
          ],
        ),
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
