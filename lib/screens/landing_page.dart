// lib/pages/landing_page.dart

import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void _login() {
    // Implement login logic here
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/Logo.png'),
            const SizedBox(height: 70),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  // Add your login functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(150, 182, 197, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 20.0), // Internal padding
                  minimumSize: Size(380, 40),
                ),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 16, 16, 16),
                      fontSize: 22.0,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                    child: TextButton(
                  onPressed: () {
                    // Add your register functionality here
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: const Color.fromRGBO(150, 182, 197, 1),
                      fontSize: 22.0,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          Color.fromRGBO(150, 182, 197, 1), // Underline color
                      decorationThickness: 2,
                    ),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
