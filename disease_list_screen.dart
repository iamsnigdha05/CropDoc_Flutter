import 'package:flutter/material.dart';

class DiseaseListScreen extends StatelessWidget {
  const DiseaseListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cropName = ModalRoute.of(context)!.settings.arguments as String;

    final diseases = _getDiseases(cropName);

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
        title: Text(
          cropName,
          style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: diseases.length,
          separatorBuilder: (_, __) => const SizedBox(height: 14),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, Routes.diseaseDetails);
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFB703),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    diseases[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<String> _getDiseases(String crop) {
    if (crop == 'Corn') {
      return ['Common_Rust', 'Gray_Leaf_Spot', 'Leaf_Blight'];
    }
    if (crop == 'Potato') {
      return ['Early_Blight', 'Late_Blight'];
    }
    if (crop == 'Rice') {
      return ['Brown_Spot', 'Leaf_Blast'];
    }
    return ['Rust', 'Smut'];
  }
}
