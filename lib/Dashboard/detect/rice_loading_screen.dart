import 'package:flutter/material.dart';
import 'temp_rice_page.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String _message = "Detecting...";

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _message = "Detecting Spoilage...";
    });

    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _message = "Detected!!";
    });

    await Future.delayed(const Duration(seconds: 1));
    // Navigate to RicePage after the last message
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const RicePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading'),
      ),
      body: Center(
        child: Text(
          _message,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
