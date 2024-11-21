import 'package:flutter/material.dart';
import 'package:t_square/features/book_screen/presentation/view/widget/PastBookingScreen.dart';
class PastListView extends StatelessWidget {
  const PastListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: PastBookingScreen(),
        );
      },
    );
  }
}
