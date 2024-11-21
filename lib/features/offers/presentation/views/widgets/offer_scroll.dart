import 'package:flutter/material.dart';

import 'package:t_square/features/offers/presentation/views/widgets/offer_box.dart';

class OfferScroll extends StatelessWidget {
   OfferScroll({super.key});
  final List<String> offers = [
    'images/cplusplus.jpg',
    'images/ai.jpg',
    'images/flutter1.jpg',
    'images/fullstack.jpg',
    'images/pfa.jpg',
    'images/uiux.jpg',
    'images/dmp.jpg',
    'images/flutter2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .9,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: offers.length,
          itemBuilder: (context, index) {
            return  OfferBox(offers: offers[index]);
          }),
    );
  }
}
