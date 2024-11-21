import 'package:flutter/material.dart';
import 'package:t_square/features/offers/presentation/views/widgets/event_box.dart';

class EventScroll extends StatelessWidget {
   EventScroll({Key? key}) : super(key: key);
  final List<String> imagePath = ['images/event1.jpg','images/events2.jpg','images/events3.jpg','images/events4.jpg','images/events5.jpg','images/event6.jpg','images/event7.jpg','images/event8.jpg'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .9,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: imagePath.length,
          itemBuilder: (context, index) {
            return EventBox(imagePath: imagePath[index],);
          }),
    );
  }
}
