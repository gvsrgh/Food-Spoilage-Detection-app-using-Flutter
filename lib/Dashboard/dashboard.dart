import 'package:flutter/material.dart';
import 'settings/settings_page.dart'; // Import the settings page
import 'analysis/food_suggestions.dart'; // Import the analysis page
import 'detect/detect_page.dart'; // Import the detect page

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the custom text color
    const Color customTextColor = Color(0xFFC7B000); // RGB (255, 199, 176, 0)

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // DETECT Button
            ElevatedButton(
              onPressed: () {
                // Navigate to DETECT functionality
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const DetectPage()), // Navigate to DetectPage
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'DETECT',
                style: TextStyle(
                    fontSize: 20, color: customTextColor), // Apply custom color
              ),
            ),
            const SizedBox(height: 20.0), // Spacing between buttons

            // Analytics Button
            ElevatedButton(
              onPressed: () {
                // Navigate to Analytics functionality
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const FoodSuggestions()), // Ensure AnalysisPage is implemented
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Analysis',
                style: TextStyle(
                    fontSize: 20, color: customTextColor), // Apply custom color
              ),
            ),
            const SizedBox(height: 20.0), // Spacing between buttons

            // Settings Button
            ElevatedButton(
              onPressed: () {
                // Navigate to the Settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Settings',
                style: TextStyle(
                    fontSize: 20, color: customTextColor), // Apply custom color
              ),
            ),
            const SizedBox(height: 20.0), // Spacing between buttons

            // Additional Section for App Info
            const Divider(),
            const Text(
              'App Version: 0.1', // Update as necessary
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'For support, visit our website.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
