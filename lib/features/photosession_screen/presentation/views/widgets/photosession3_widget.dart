import 'package:flutter/material.dart';

class Photosession3Widget extends StatelessWidget {
  const Photosession3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // ضبط المسافات الجانبية والعمودية
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // لون الظل
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 5), // موقع الظل
            ),
          ],
        ),
        height: 100, // تعديل الارتفاع ليتناسق مع المحتوى
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0), // ضبط المسافات حول الصورة
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
                      "Filming with a photo camera.\nCamera entry fee to the place",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Text("400 LE", style: TextStyle(fontSize: 14)),
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
