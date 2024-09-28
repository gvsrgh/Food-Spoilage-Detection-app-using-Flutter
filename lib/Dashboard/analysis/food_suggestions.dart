import 'package:flutter/material.dart';
import 'analysis.dart'; // Import the LoadingScreen

class FoodSuggestions extends StatelessWidget {
  const FoodSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Food'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            const TextField(
              decoration: InputDecoration(
                labelText: 'Search for Food',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20.0), // Spacing

            // Main Heading
            const Text(
              'Food Suggestions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0), // Spacing

            // Food Suggestions List
            Expanded(
              child: ListView(
                children: [
                  // List of food items
                  'Aloo Gobi',
                  'Biryani',
                  'Chole Bhature',
                  'Dosa',
                  'Idli',
                  'Kheer',
                  'Lassi',
                  'Masala Dosa',
                  'Naan',
                  'Paneer Tikka',
                  'Rajma',
                  'Rice', // Added Rice option
                  'Samosa',
                  'Tandoori Chicken',
                  'Vada Pav',
                  'Pani Puri',
                ].map((food) {
                  return ListTile(
                    title: Text(food),
                    onTap: () {
                      if (food == 'Rice') {
                        // Navigate to LoadingScreen when Rice is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AnalysisPage(),
                          ),
                        );
                      } else {
                        // Handle other food selections if needed
                      }
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
