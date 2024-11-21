import 'package:flutter/material.dart';
import 'package:t_square/features/splash_screen/presentation/view/onboarding_widget/OnboardingBody.dart';
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffBF1522),
          body: const OnboardingBody(),
      ),
    );
  }
}
