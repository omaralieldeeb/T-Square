import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class TextformWidget extends StatelessWidget {
  const TextformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.05),
      width: screenWidth * 0.9, // جعل العرض نسبة من عرض الشاشة
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(screenWidth * 0.05), // نسبة قطر الحواف
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone Number",
            style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: screenHeight * 0.01),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.03), // نسبة قطر الحواف
              ),
              hintText: "Enter Phone Number",
              prefixIcon: Icon(Icons.phone, size: screenWidth * 0.06), // حجم الأيقونة نسبة من العرض
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            "Password",
            style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: screenHeight * 0.01),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.03), // نسبة قطر الحواف
              ),
              hintText: "Enter Your Password",
              prefixIcon: Icon(Icons.lock, size: screenWidth * 0.06), // حجم الأيقونة نسبة من العرض
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.KForgotPasswordPage);
                },
                child: Text(
                  "Forget Password?",
                  style: TextStyle(fontSize: screenWidth * 0.035),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          Container(
            alignment: Alignment.center,
            width: double.maxFinite,
            height: screenHeight * 0.06, // جعل الارتفاع نسبة من ارتفاع الشاشة
            decoration: BoxDecoration(
              color: Color(0xffBF1522),
              borderRadius: BorderRadius.circular(screenWidth * 0.03), // نسبة قطر الحواف
            ),
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.KHomePage);
              },
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(fontSize: screenWidth * 0.035), // حجم النص نسبة من العرض
              ),
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.KSignUpPage);
                },
                child: Text(
                  " Sign up",
                  style: TextStyle(color: Color(0xffBF1522), fontSize: screenWidth * 0.035),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}