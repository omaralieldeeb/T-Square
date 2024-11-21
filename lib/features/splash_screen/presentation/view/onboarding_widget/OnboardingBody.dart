import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/core/utils/assets.dart';
import 'package:t_square/features/splash_screen/presentation/view/onboarding_widget/custom.dart';
import 'package:t_square/features/splash_screen/presentation/view/onboarding_widget/Indicator.dart';
import 'package:t_square/features/splash_screen/presentation/view/onboarding_widget/OnboardingPageShape.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  OnBoardingBodyState createState() => OnBoardingBodyState();
}

class OnBoardingBodyState extends State<OnboardingBody> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Custom(), // PageView
        Expanded(
          child: PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            children: [
              OnboardingPageShape(
                image: Assets.on1,
                title: 'Your favorite place to work',
                description:
                    'In T-Square Co-working space, we provide a place that makes you more productive, enjoyable, and comfortable\nA place made up of different parts',
              ),
              OnboardingPageShape(
                image: Assets.on2,
                title: 'Delightful open air',
                description:
                    'You can choose a game to play from the many games we have, sit at a comfortable base, or take pictures in the different places that have been specially made to take beautiful pictures.',
              ),
              OnboardingPageShape(
                image: Assets.on3,
                title: 'Choose your favorite room',
                description:
                    'You can find the right room for your current mood, as we have many rooms that meet all needs. You can move between funny room, training room and meeting room.',
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(bottom: 44),
          child: Column(
            children: [
              Indicator(currentPage: currentPage),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  if (currentPage == 2) {
                    GoRouter.of(context).push(AppRouter.KLoginPage);
                  } else {
                    _controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.ease,
                    );
                  }
                },
                child: Container(
                  width: 70,
                  height: 70,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
