import 'package:flutter/material.dart';

class FAQsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color as seen in the image
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back navigation
          },
        ),
        title: Text(
          'FAQs',
          style: TextStyle(
            fontSize: 22, // Title font size
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add search functionality here
            },
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0, // Remove shadow under AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            // Question 1
            Text(
              'What is sexual and reproductive health?',
              style: TextStyle(
                fontSize: 18, // Question font size
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Sexual and reproductive health refers to the physical, emotional, mental, and social well-being related to all matters of the reproductive system.',
              style: TextStyle(
                fontSize: 16, // Answer font size
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20), // Space between questions

            // Question 2
            Text(
              'At what age should I start learning about sexual health?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'It’s important to start learning about sexual health as soon as you begin puberty, typically between ages 9 and 14.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),

            // Question 3
            Text(
              'What are the signs of puberty, and when does it start?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Puberty usually begins between ages 9 and 14.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),

            // Question 4
            Text(
              'How can I protect myself from sexually transmitted infections (STIs)?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'To protect yourself from STIs, practice safe sex by using condoms consistently, get vaccinated against HPV, and avoid sharing personal items like razors.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),

            // Question 5
            Text(
              'What is contraception, and what methods are available for adolescents?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Contraception refers to methods used to prevent pregnancy. Common contraceptives for adolescents include condoms, birth control pills, implants, and emergency contraception.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),

            // Question 6
            Text(
              'What should I do if I experience peer pressure to have sex?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'If you feel pressured to have sex, it’s important to remember that you choose when, if ever, to engage in sexual activity.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),

            // Question 7
            Text(
              'What should I do if I think I’m pregnant?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'If you suspect you might be pregnant, the first step is to take a pregnancy test, which you can get at a pharmacy or a health clinic.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FAQsPage(),
  ));
}
