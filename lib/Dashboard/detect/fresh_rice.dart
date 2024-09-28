import 'package:flutter/material.dart';

class FreshRicePage extends StatelessWidget {
  const FreshRicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fresh Rice'),
      ),
      body: SingleChildScrollView( // Make the page scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'This rice is fresh and safe to eat!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0), // Spacing

            const Text(
              'The rice shows no signs of spoilage and is within all safe environmental thresholds. You can enjoy this rice without any concerns.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20.0), // Spacing

            const Text(
              'Here are the detected values confirming freshness:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),

            // Temperature
            const Text(
              '🌡️ Temperature:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: 10°C - 15°C\nDetected Value: 12°C (Perfect for preservation)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10.0),

            // CO Levels
            const Text(
              '🧪 CO (Carbon Monoxide):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: < 10 ppm\nDetected Value: 5 ppm (Well within safety limits)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10.0),

            // Humidity Levels
            const Text(
              '💧 Humidity:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: 40% - 60%\nDetected Value: 50% (Ideal for freshness)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10.0),

            // Methane Levels
            const Text(
              '🔥 Methane:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: < 2 ppm\nDetected Value: 1 ppm (Low and safe)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10.0),

            // Ammonia Levels
            const Text(
              '🧴 Ammonia:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: < 1 ppm\nDetected Value: 0.5 ppm (No signs of spoilage)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30.0), // Extra Spacing

            // Confirmation Message
            const Text(
              '✅ Conclusion: The rice is fresh and perfectly safe for consumption. All environmental conditions are well within the safe thresholds.',
              style: TextStyle(
                fontSize: 16, // Increased font size for better visibility
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
