import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spoilage Analysis'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              'Insights and Historical Data on Food Spoilage',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Divider(),

            // Historical Trends Section
            const Text(
              'Historical Trends (last 4 checks)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/historical_trends.png',
              width: MediaQuery.of(context)
                  .size
                  .width, // Fit the image to screen width
              height: 325, // Adjust height as needed
              fit: BoxFit
                  .fitWidth, // Make the image fit the width while maintaining aspect ratio
            ),
            const SizedBox(height: 20.0), // Spacing

            // Display Historical Graph Image and make it fit the screen width
            const Divider(),

            // Spoilage Rate Section
            const Text(
              'Rice Spoilage Rate (In General)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/Rice_spoilage_rate.png',
              width: MediaQuery.of(context)
                  .size
                  .width, // Fit the image to screen width
              height: 325, // Adjust height as needed
              fit: BoxFit
                  .fitWidth, // Make the image fit the width while maintaining aspect ratio
            ),
            const SizedBox(height: 20.0), // Spacing
            const Divider(),

            // Recommendations Section
            const Text(
              'Recommendations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              '1. Adjust storage temperature to reduce spoilage.\n'
              '2. Monitor humidity levels in storage areas.\n'
              '3. Rotate stock to use older items first.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(),

            // Reports Section
            const Text(
              'Reports',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Logic to generate and download reports
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Generating reports...')),
                );
              },
              child: const Text('Generate Reports'),
            ),
          ],
        ),
      ),
    );
  }
}
