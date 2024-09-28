import 'package:flutter/material.dart';
import 'profile_information.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Initialize toggle states
  bool pushNotifications = true;
  bool emailNotifications = true;
  bool darkMode = false; // Control dark mode
  bool twoFactorAuth = false;
  bool biometricAuth = false;

  // Define custom color (ARGB format for 255, 199, 176, 0)
  final Color customColor = const Color(0xFFC7B000);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous page
            },
          ),
          title: const Text('Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Text(
                'Account Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Profile Information'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileInformation()),
                  );
                },
              ),
              ListTile(
                title: const Text('Password Management'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Password Management page
                },
              ),
              const Divider(),
              const Text(
                'Notification Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Push Notifications'),
                trailing: Switch(
                  activeColor: customColor,
                  value: pushNotifications,
                  onChanged: (bool value) {
                    setState(() {
                      pushNotifications = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Email Notifications'),
                trailing: Switch(
                  activeColor: customColor,
                  value: emailNotifications,
                  onChanged: (bool value) {
                    setState(() {
                      emailNotifications = value;
                    });
                  },
                ),
              ),
              const Divider(),
              const Text(
                'Privacy Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Data Sharing'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Data Sharing settings
                },
              ),
              ListTile(
                title: const Text('Visibility'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Visibility settings
                },
              ),
              const Divider(),
              const Text(
                'Theme and Appearance',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Dark Mode'),
                trailing: Switch(
                  activeColor: customColor,
                  value: darkMode,
                  onChanged: (bool value) {
                    setState(() {
                      darkMode = value; // Update state and toggle dark mode
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Font Size'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Font Size settings
                },
              ),
              const Divider(),
              const Text(
                'Language and Region',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Language Selection'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Language Selection settings
                },
              ),
              ListTile(
                title: const Text('Region Settings'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Region Settings
                },
              ),
              const Divider(),
              const Text(
                'Security Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Two-Factor Authentication'),
                trailing: Switch(
                  activeColor: customColor,
                  value: twoFactorAuth,
                  onChanged: (bool value) {
                    setState(() {
                      twoFactorAuth = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Biometric Authentication'),
                trailing: Switch(
                  activeColor: customColor,
                  value: biometricAuth,
                  onChanged: (bool value) {
                    setState(() {
                      biometricAuth = value;
                    });
                  },
                ),
              ),
              const Divider(),
              const Text(
                'App Preferences',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Default Home Screen'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Default Home Screen settings
                },
              ),
              ListTile(
                title: const Text('Content Preferences'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Content Preferences settings
                },
              ),
              const Divider(),
              const Text(
                'Data Management',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Clear Cache'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Handle Clear Cache action
                },
              ),
              ListTile(
                title: const Text('Download Preferences'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Download Preferences settings
                },
              ),
              const Divider(),
              const Text(
                'Feedback and Support',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Report a Problem'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Handle Report a Problem action
                },
              ),
              ListTile(
                title: const Text('Contact Support'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Handle Contact Support action
                },
              ),
              const Divider(),
              const Text(
                'Legal and About',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: const Text('Terms of Service'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Terms of Service
                },
              ),
              ListTile(
                title: const Text('Privacy Policy'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to Privacy Policy
                },
              ),
              const ListTile(
                title: Text('App Version'),
                trailing: Text('0.0.1'), // Replace with actual version
              ),
            ],
          ),
        ),
      ),
    );
  }
}
