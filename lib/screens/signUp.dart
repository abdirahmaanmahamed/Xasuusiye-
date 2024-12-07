import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/screens/home.dart';
import 'package:flutter_application_3/screens/register.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({super.key});

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            Image.asset(
              "image/xas.png",
              width: 200,
            ),
            const SizedBox(height: 20),
            Image.asset(
              "image/tick.png",
              width: 200,
            ),

            // Subtitle Text
            const Text(
              "Marnaba Ma ilaabi Doontid Wax aqriska",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 40),

            // Sign Up Button
            Container(
              margin: const EdgeInsets.all(20),
              //  padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 31, 33, 174),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cont) => HomeScreen()));
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 0),

            // Google Sign In Button
            Container(
              margin: const EdgeInsets.all(20),
              // padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.grey.shade300),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                ),
                icon: Image.asset(
                  'image/google_logo.png', // Replace with your Google logo path
                  width: 24,
                  height: 24,
                ),
                label: const Text(
                  "Continue with Google",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  // Add action for Google sign-in
                },
              ),
            ),

            // Apple Sign In Button
            Container(
              margin: const EdgeInsets.all(15),
              //padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                ),
                icon: const Icon(Icons.apple, size: 24),
                label: const Text(
                  "Continue with Apple",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  // Add action for Apple sign-in
                },
              ),
            ),

            const SizedBox(height: 20),

            // Log In Text
            TextButton(
              onPressed: () {
                // Add action for login
              },
              child: const Text(
                "Log in",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
