import 'package:flutter/material.dart';
import 'package:t_square/features/splash_screen/presentation/view/splash_widget/splash_body.dart';
class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
