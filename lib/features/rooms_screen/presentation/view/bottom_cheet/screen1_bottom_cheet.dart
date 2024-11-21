import 'package:flutter/material.dart';
import 'package:t_square/features/rooms_screen/presentation/view/bottom_cheet/buildAmenity.dart';

class Screen1BottomCheet extends StatelessWidget {
  const Screen1BottomCheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        height: 370,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Contents',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1B1B1B)),
            ),
            SizedBox(height: 16),
            Column(
              children: [
                buildAmenityRow("Dart & OOP"),
                buildAmenityRow("Widgets"),
                buildAmenityRow("Navigation Controls"),
                buildAmenityRow("API"),
                buildAmenityRow("State Management"),
                buildAmenityRow("Local Storage"),
                buildAmenityRow("Firebase"),
                buildAmenityRow("Design Patterns With MVVM"),
                buildAmenityRow("Animation"),
                buildAmenityRow("Github"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
