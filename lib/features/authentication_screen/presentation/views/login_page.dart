import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/core/widgets/image_widget.dart';
import 'package:t_square/features/authentication_screen/presentation/views/widgets/login_widgets/textform_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.05), // فراغ علوي ديناميكي
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.KHomePage);
                    },
                    icon: Image.asset(
                      "images/image3.png",
                      width: screenWidth * 0.06,
                      height: screenHeight * 0.04,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02), // فراغ ديناميكي
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageWidget(),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              const TextformWidget(), // فورم تسجيل الدخول
            ],
          ),
        ),
      ),
    );
  }
}