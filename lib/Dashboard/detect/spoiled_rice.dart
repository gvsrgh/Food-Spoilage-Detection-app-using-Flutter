import 'package:flutter/material.dart';

class SpoiledRicePage extends StatelessWidget {
  const SpoiledRicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spoiled Rice'),
      ),
      body: SingleChildScrollView( // Make the page scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'This rice is spoiled!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0), // Spacing

            const Text(
              'The rice shows clear signs of spoilage after being stored for two days. It is not safe to eat and should be discarded immediately.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20.0), // Spacing

            const Text(
              'Here are the detected values that indicate spoilage:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),

            // Temperature
            const Text(
              '🌡️ Temperature:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: 10°C - 15°C\nDetected Value: 25°C (Too high)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10.0),

            // CO Levels
            const Text(
              '🧪 CO (Carbon Monoxide):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: < 10 ppm\nDetected Value: 30 ppm (Dangerously high)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10.0),

            // Humidity Levels
            const Text(
              '💧 Humidity:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: 40% - 60%\nDetected Value: 80% (Too high, may lead to mold)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10.0),

            // Methane Levels
            const Text(
              '🔥 Methane:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: < 2 ppm\nDetected Value: 15 ppm (Abnormally high)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10.0),

            // Ammonia Levels
            const Text(
              '🧴 Ammonia:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Safe Value: < 1 ppm\nDetected Value: 8 ppm (High levels, sign of spoilage)',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30.0), // Extra Spacing

            // Warning Message
            const Text(
              '⚠️ Conclusion: The rice is unsafe to consume due to the high temperature, CO, humidity, methane, and ammonia levels detected. Spoilage has clearly occurred, and it is recommended to discard the rice immediately.',
              style: TextStyle(
                  fontSize: 16, // Increased font size for better visibility
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
