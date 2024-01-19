import 'package:flutter/material.dart';
import '../widgets/app_bar_default.dart';
import './home_screen.dart';
import './signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: const MyAppBarDefault(),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Image.asset('assets/signin.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ElevatedButton(
                  onPressed: () {
                    navigateToPage(context, const HomeScreen());
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
                  child: const Text('Log In',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text("Don't have an account?"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ElevatedButton(
                  onPressed: () {
                    navigateToPage(context, const SignUpScreen());
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
                  child: const Text('Create an Account',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
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
