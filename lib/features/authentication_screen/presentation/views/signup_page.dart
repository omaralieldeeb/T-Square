import 'package:flutter/material.dart';
import 'package:t_square/core/widgets/image_widget.dart';
import 'package:t_square/features/authentication_screen/presentation/views/widgets/signup_widgets/signup_textformfield_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView( // للتأكد من إمكانية التمرير على الشاشات الصغيرة
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.05, top: screenHeight * 0.02),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "images/image3.png",
                      width: screenWidth * 0.06,
                      height: screenHeight * 0.04,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02), // فراغ ديناميكي
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageWidget(), // Assuming ImageWidget handles responsive image sizing
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            SignupTextformfieldWidget(), // نموذج تسجيل الدخول
          ],
        ),
      ),
    );
  }
}