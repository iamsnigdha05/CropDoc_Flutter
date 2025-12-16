import 'package:flutter/material.dart';

class TreatmentListScreen extends StatelessWidget {
  const TreatmentListScreen({Key? key}) : super(key: key);

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
          style: const TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: diseases.length,
                separatorBuilder: (_, __) => const SizedBox(height: 14),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, Routes.treatmentDetails);
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

            /// Bottom Illustration
            Image.asset(
              'assets/images/treatment_footer.png',
              height: 140,
            ),
          ],
        ),
      ),
    );
  }

  List<String> _getDiseases(String crop) {
    switch (crop) {
      case 'Potato':
        return ['Early_Blight', 'Late_Blight'];
      case 'Corn':
        return ['Common_Rust', 'Gray_Leaf_Spot', 'Leaf_Blight'];
      case 'Rice':
        return ['Brown_Spot', 'Leaf_Blast'];
      default:
        return ['Rust', 'Smut'];
    }
  }
}
