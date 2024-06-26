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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('assets/signin.png', width: 300),
                ),
                const Text("Login",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Set the desired color
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black), // Set the label text color
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16.0),
                const PasswordField(),
                const SizedBox(height: 40.0),
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
                        borderRadius: BorderRadius.circular(
                            30.0), // Set the border radius
                        side: const BorderSide(
                          color: Color(0xFFFF6B6B), // Set the border color
                          width: 0, // Set the border width
                        ),
                      ),
                    ),
                    child: const Text('Log In',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
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
                        borderRadius: BorderRadius.circular(
                            30.0), // Set the border radius
                        side: const BorderSide(
                          color: Color(0xFFFF6B6B), // Set the border color
                          width: 0, // Set the border width
                        ),
                      ),
                    ),
                    child: const Text('Sign Up',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Set the desired color
        ),
        labelStyle:
            const TextStyle(color: Colors.black), // Set the label text color
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.black, // Set the eye icon color
          ),
        ),
      ),
      obscureText: _obscureText,
    );
  }
}

class ConfirmPasswordField extends StatefulWidget {
  const ConfirmPasswordField({super.key});

  @override
  _ConfirmPasswordFieldState createState() => _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends State<ConfirmPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Set the desired color
        ),
        labelStyle:
            const TextStyle(color: Colors.black), // Set the label text color
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.black, // Set the eye icon color
          ),
        ),
      ),
      obscureText: _obscureText,
    );
  }
}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
