import 'package:flutter/material.dart';
import 'package:t_square/core/utils/style.dart';

Widget OnboardingPageShape({required String image, required String title, required String description}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 24),
        Text(
          title,
          style: Styles.textStyle20.copyWith(color: Color(0xffFFFFFF)),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        Text(
          description,
          style: Styles.textStyle16.copyWith(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}