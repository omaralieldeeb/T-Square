import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:t_square/features/rooms_screen/presentation/view/bottom_cheet/screen1_bottom_cheet.dart';
import 'package:t_square/features/rooms_screen/presentation/view/bottom_cheet/screen2_bottom_cheet.dart';

void Transport(BuildContext context, int screenNumber) {
  showMaterialModalBottomSheet(
    context: context,
    builder: (context) => screenNumber == 1
        ? const Screen1BottomCheet()
        : const Screen2BottomCheet(),
  );
}