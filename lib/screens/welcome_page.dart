// lib/pages/Welcome_page.dart


import 'package:flutter/material.dart';


class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}


class _WelcomePageState extends State<WelcomePage> {
  void _Get_started() {
    // Implement get_started logic here
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: Container(
            color: Colors.black,
            height: 0.2,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/back.png', // Replace with your background image path
              fit: BoxFit.cover, // Makes the image cover the entire background
            ),
          ),
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/Logo.png'),
                const SizedBox(height: 10),
                Text('Welcome to TeenKonnekt!',
                    style: TextStyle(
                      fontSize: 30,
                      color: const Color.fromRGBO(102, 102, 102, 1),
                    )),
                const SizedBox(height: 100),
                Center(
                  child: Text(
                    "To offer our best service we need more information from you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromRGBO(102, 102, 102, 1),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    // Add your login functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(150, 182, 197, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0), // Internal padding
                    minimumSize: Size(380, 20),
                  ),
                  child: Text(
                    'Let\'s get started',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
