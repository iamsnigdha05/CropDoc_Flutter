import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF7FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'About Crop Doc',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Crop Doc, your trusted companion in agriculture. '
                  'Utilizing advanced Convolutional Neural Network (CNN) technology, '
                  'our app accurately recognizes four major crops: corn, potato, rice, and wheat.\n\n'
                  'Crop Doc provides crop health monitoring, disease detection, '
                  'fertilization and medicine guidance. It simplifies crop management '
                  'for farmers and gardening enthusiasts, empowering you to make '
                  'informed decisions and maximize your harvests.\n\n'
                  'So, use Crop Doc and experience the future of precision farming '
                  'on your Android device.',
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Image.asset(
                'lib/images/about_illustration.png',
                height: 220,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
