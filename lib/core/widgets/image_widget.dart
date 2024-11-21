import 'package:flutter/material.dart';
import 'package:t_square/core/utils/assets.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 120),
      height: 235,
      width: 170,
      decoration: BoxDecoration(
          image: DecorationImage(

              image: AssetImage(Assets.logo),
               fit: BoxFit.fill)),
    );
  }
}
