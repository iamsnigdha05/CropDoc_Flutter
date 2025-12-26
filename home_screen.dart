import 'package:flutter/material.dart';
import '../routes.dart';
import '../widgets/image_picker_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF7FA),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 50),

            /// Header
            Row(
              children: [
                Image.asset(
                  'lib/images/home_header.png',
                  height: 120,
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Scan a crop to\nidentify disease',
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
                  _CropTile('Corn', 'lib/images/corn.png', context),
                  _CropTile('Potato', 'lib/images/potato.png', context),
                  _CropTile('Rice', 'lib/images/rice.png', context),
                  _CropTile('Wheat', 'lib/images/wheat.png', context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CropTile extends StatelessWidget {
  final String title;
  final String icon;
  final BuildContext context;

  const _CropTile(this.title, this.icon, this.context);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openImagePicker(context),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF0EC7B7),
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

  void _openImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (_) => ImagePickerSheet(
        onCamera: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, Routes.result);
        },
        onGallery: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, Routes.result);
        },
      ),

    );
  }
}
