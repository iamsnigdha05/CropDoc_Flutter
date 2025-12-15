import 'package:flutter/material.dart';
import '../routes.dart';

class DiseaseScreen extends StatelessWidget {
  const DiseaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF7FA),
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
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Header Illustration + Text
            Row(
              children: [
                Image.asset(
                  'assets/images/disease_header.png',
                  height: 120,
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Know About\nCrop Disease',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFF4A300),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            /// Crop Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _CropTile(
                    title: 'Corn',
                    icon: 'assets/images/corn.png',
                    onTap: () => _openDiseaseList(context, 'Corn'),
                  ),
                  _CropTile(
                    title: 'Potato',
                    icon: 'assets/images/potato.png',
                    onTap: () => _openDiseaseList(context, 'Potato'),
                  ),
                  _CropTile(
                    title: 'Rice',
                    icon: 'assets/images/rice.png',
                    onTap: () => _openDiseaseList(context, 'Rice'),
                  ),
                  _CropTile(
                    title: 'Wheat',
                    icon: 'assets/images/wheat.png',
                    onTap: () => _openDiseaseList(context, 'Wheat'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openDiseaseList(BuildContext context, String crop) {
    Navigator.pushNamed(
      context,
      Routes.diseaseList,
      arguments: crop,
    );
  }
}

class _CropTile extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const _CropTile({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFD68A00),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, height: 40),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
