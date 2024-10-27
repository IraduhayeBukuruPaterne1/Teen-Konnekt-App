import 'package:flutter/material.dart';

import 'screens/ask_me_screen.dart';
import 'screens/discussion_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(TeenKonnektApp());
}

class TeenKonnektApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teen-Konnekt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/ask_me',
      routes: {
        '/ask_me': (context) => AskMeScreen(),
        '/discussion': (context) => DiscussionScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
