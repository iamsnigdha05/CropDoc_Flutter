import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF4F4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Crop Doc',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),

            /// Image Preview
            Center(
              child: Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'lib/images/leaf_result.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            /// Processed Result Title
            const Center(
              child: Text(
                'Processed Result',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue,
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// Details
            const Text(
              'Name',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const Text(
              'Corn',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFFB703),
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Identified Disease',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const Text(
              'Common_Rust',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFFB703),
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Level of Confidence',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const Text(
              '0.9999999',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFFB703),
              ),
            ),

            const SizedBox(height: 30),

            /// Buttons (right aligned)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _ActionButton(
                  text: 'TREATMENT',
                  color: const Color(0xFFB388EB),
                  onTap: () {
                    // Navigator.pushNamed(context, Routes.treatment);
                  },
                ),
                const SizedBox(width: 12),
                _ActionButton(
                  text: 'SCAN AGAIN',
                  color: const Color(0xFFB388EB),
                  onTap: () {
                    // Navigator.pushNamed(context, Routes.scanAgain);
                  },
                ),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const _ActionButton({
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
      ),
    );
  }
}
