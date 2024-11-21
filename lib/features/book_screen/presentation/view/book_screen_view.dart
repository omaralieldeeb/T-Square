import 'package:flutter/material.dart';
import 'package:t_square/features/book_screen/presentation/view/widget/DateAndTime.dart';
class BookScreenView extends StatelessWidget {
  const BookScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DateAndTime(),
    );
  }
}
