import 'package:flutter/material.dart';

class Photosession1Widget extends StatelessWidget {
  const Photosession1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red[100], // الخلفية الحمراء عند التحديد
          borderRadius: BorderRadius.circular(16.0),
        ),
        height: 100, // تعديل الارتفاع
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/image20.png",
                width: 80, // حجم الصورة
                height: 80,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Filming with a video camera outside the rooms",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Text("500 LE", style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: Colors.grey[300], // لون الزر
                child: InkWell(
                  splashColor: Colors.grey, // تأثير الضغط
                  onTap: () {},
                  child: const SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(Icons.add, color: Colors.red),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16), // المسافة على اليمين
          ],
        ),
      ),
    );
  }
}