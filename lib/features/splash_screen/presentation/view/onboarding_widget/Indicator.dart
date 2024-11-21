import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int currentPage;
  const Indicator({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: currentPage == index ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }),
    );
  }
}
