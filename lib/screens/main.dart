import 'package:flutter/material.dart';
import 'appointment_info_page.dart';
import 'FAQs.dart';
import 'InterestingStories.dart';
import 'profile_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), // Start with the main page
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
        title: Text('TeenKonnekt'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black, // Black text color
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            // Cards Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  // Ask Me Card
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AskMePage()),
                      ); // Navigate to Ask Me Page
                    },
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          'Ask Me',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  // Discussion Room Card
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DiscussionRoomPage()),
                      ); // Navigate to Discussion Room Page
                    },
                    child: Card(
                      color: Colors.lightGreenAccent,
                      child: Center(
                        child: Text(
                          'Discussion Room',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  // FAQs Card
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FAQsPage()),
                      );
                    },
                    child: Card(
                      color: Colors.orangeAccent,
                      child: Center(
                        child: Text(
                          'FAQs',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  // Talk to Our Expert Card
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppointmentInfoPage()),
                      );
                      // Add the navigation to the 'Talk to Our Expert' page here
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => TalkToExpertPage()));
                    },
                    child: Card(
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text(
                          'Talk to Our Expert',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Interesting Stories (Larger Card)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InterestingStoriesPage()),
                  );
                  // Add the navigation to the 'Interesting Stories' page here
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => InterestingStoriesPage()));
                },
                child: Card(
                  color: Colors.brown.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'Interesting Stories',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Enter Our Discussion Room Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileScreen()),
                      );
                    // Add the navigation to the 'Discussion Room' page here
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => DiscussionRoomPage()));
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Find My Account Info',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Ask Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0, // Set initial index to home
        onTap: (int index) {
          // Handle bottom navigation clicks here
          // You can add navigation to different pages based on the index
          // For example:
          // if (index == 1) { Navigator.push(context, MaterialPageRoute(builder: (context) => AskMePage())); }
        },
      ),
    );
  }
}
