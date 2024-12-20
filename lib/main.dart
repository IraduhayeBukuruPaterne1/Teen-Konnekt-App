import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'screens/landing_page.dart'; // Adjust the import path as needed
=======

import 'screens/FAQs.dart';
import 'screens/InterestingStories.dart';
import 'screens/appointment_info_page.dart';
import 'screens/landing_page.dart';
import 'screens/login_page.dart';
import 'screens/sign_up_page.dart';
import 'screens/slot.dart';
import 'screens/welcome_page.dart';
>>>>>>> 10f6fc00089a765f835e942cbe23fbd38cb774aa

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teen Konnekt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD
      home: LandingPage(),
=======
      home: WelcomePage(), // Set WelcomePage as the home
    );
  }
}

// Ensure HomePage is defined here
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teen-Konnekt Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AppointmentInfoPage()),
                );
              },
              child: Text('Go to Appointment Info'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FAQsPage()),
                );
              },
              child: Text('Go to FAQs'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InterestingStoriesPage()),
                );
              },
              child: Text('Go to Interesting Stories'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()),
                );
              },
              child: Text('Go to Landing Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Go to Login Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sign_up_Page()),
                );
              },
              child: Text('Go to Sign-up Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SlotBookingPage()),
                );
              },
              child: Text('Go to Slot Booking Page'),
            ),
          ],
        ),
      ),
>>>>>>> 10f6fc00089a765f835e942cbe23fbd38cb774aa
    );
  }
}
