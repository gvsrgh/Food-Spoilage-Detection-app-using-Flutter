import 'package:flutter/material.dart';
import 'fresh_rice.dart'; // Import FreshRicePage
import 'spoiled_rice.dart'; // Import SpoiledRicePage

class RicePage extends StatelessWidget {
  const RicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rice Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Rice Condition',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40.0), // Spacing

            // Button for Safe Rice
            ElevatedButton(
              onPressed: () {
                // Navigate to FreshRicePage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FreshRicePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 20.0),
              ),
              child: const Text('Safe Rice', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 20.0), // Spacing

            // Button for Spoiled Rice
            ElevatedButton(
              onPressed: () {
                // Navigate to SpoiledRicePage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SpoiledRicePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 20.0),
              ),
              child: const Text('Spoiled Rice', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
