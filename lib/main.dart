import 'package:flutter/material.dart';
import 'Initial/loading_screen.dart'; // Import the loading screen
import 'Initial/sign_in.dart'; // Import the sign-in page
import 'Initial/sign_up.dart'; // Import the sign-up page
import 'Dashboard/dashboard.dart'; // Import the dashboard page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAFE App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Start at the loading screen
      routes: {
        '/': (context) => const LoadingScreen(), // Loading screen route
        '/signin': (context) => const SignInPage(), // Sign-in page route
        '/signup': (context) => const SignUpPage(), // Sign-up page route
        '/dashboard': (context) => const DashboardPage(), // Dashboard route
      },
    );
  }
}
