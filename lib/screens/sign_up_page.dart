// lib/pages/Sign_up_page.dart


import 'package:flutter/material.dart';


class Sign_up_Page extends StatefulWidget {
  @override
  _Sign_up_PageState createState() => _Sign_up_PageState();
}


class _Sign_up_PageState extends State<Sign_up_Page> {
   final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirm_password = TextEditingController();


  void _Sign_up() {
    // Implement sign up here
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Container(
                  child: TextButton(
                onPressed: () {
                  // Add your register functionality here
                },
                child: Text(
                  '< Sign up',
                  style: TextStyle(
                    color: const Color.fromRGBO(150, 182, 197, 1),
                    fontSize: 30.0,
                  ),
                ),
              )),
            ]),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(
                  7.0), // Adjust this to control the padding around the TextField
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(7.0), // Adjust the padding here
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(7.0), // Adjust the padding here
              child: TextField(
                controller: _confirm_password,
                decoration: InputDecoration(
                  labelText: "confirm Password",
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
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
            const SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text(
                    'Already have an account?',
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
                    'Log in',
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
