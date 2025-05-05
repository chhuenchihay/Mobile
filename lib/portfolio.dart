import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80, // Set the width of the leading widget
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0), // Add padding around the image
          child: CircleAvatar(
            backgroundImage: AssetImage(
                'assets/images/logo.png'), // Use AssetImage for the logo
            radius: 20, // Adjust the radius to control the size of the circle
          ),
        ),
        title: const Text('Hello, World!'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          padding: EdgeInsets.zero, // Remove default padding
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue, // Header background color
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person), // Icon for "My Profile"
              title: const Text('My Profile'),
              onTap: () {
                // Action for "My Profile"
                Navigator.pop(context); // Close the drawer
                // Add navigation or functionality here
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail), // Icon for "Contact"
              title: const Text('Contact'),
              onTap: () {
                // Action for "Contact"
                Navigator.pop(context); // Close the drawer
                // Add navigation or functionality here
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to my portfolio!',
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
            ),
            const Text(
              'I am',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'CHHUEN CHIHAY',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Web Developer',
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'A drama-and-milk-tea-lover web developer who loves to explore new things!',
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://www.facebook.com/pendoraz?mibextid=wwXIfr&mibextid=wwXIfr');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  // Handle the error if the URL cannot be launched
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Could not launch $url')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 20),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Hire Me!',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://www.linkedin.com/in/chihay-chhuen-35a70a357?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  // Handle the error if the URL cannot be launched
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Could not launch $url')),
                  );
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.blue, width: 2),
                padding: const EdgeInsets.symmetric(vertical: 20),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Download CV',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
