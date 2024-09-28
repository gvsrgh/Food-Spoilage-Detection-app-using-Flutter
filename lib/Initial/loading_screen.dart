import 'package:flutter/material.dart';
import 'dart:async';
import 'sign_in.dart'; // Import the sign-in page

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    // Simulate a loading process
    Timer(const Duration(seconds: 3), () {
      // Navigate to the sign-in page after the loading is done
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const SignInPage()), // Navigate to SignInPage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo
            Image.asset(
              'assets/appLogo.png', // Ensure your logo image is in the assets folder
              height: 150.0,
              width: 150.0,
            ),
            const SizedBox(height: 20.0),
            // Subtitle under the logo
            const Text(
              'Spoilage Assessment and Food Evaluation',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
