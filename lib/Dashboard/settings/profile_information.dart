import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Information'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Profile picture
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // User's name and other details
            const Text(
              'Sai',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'sairam123@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Text(
              '+91 9876543210',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Text(
              'APSRM School Anna Canteen, Vijayawada, Andhra Pradesh',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // Edit profile button
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to the edit profile page (you can implement it)
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC7B000), // Custom color
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Additional user details (optional)
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('Occupation'),
                    subtitle: Text('Anna Canteen Food Manager'),
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('Date of Birth'),
                    subtitle: Text('Jan 25, 1995'),
                  ),
                  ListTile(
                    leading: Icon(Icons.male),
                    title: Text('Gender'),
                    subtitle: Text('Male'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
