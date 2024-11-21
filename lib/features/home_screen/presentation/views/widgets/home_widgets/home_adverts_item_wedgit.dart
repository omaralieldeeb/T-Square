import 'package:flutter/material.dart';

class HomeAdvertsItemWidget extends StatefulWidget {
  const HomeAdvertsItemWidget({super.key});

  @override
  State<HomeAdvertsItemWidget> createState() => _HomeAdvertsItemWidgetState();
}

class _HomeAdvertsItemWidgetState extends State<HomeAdvertsItemWidget> {
  final List<Map<String, String>> courses = [
    {"image": "images/event6.jpg"},
    {"image": "images/event8.jpg"},
    {"image": "images/event2.jpg"},
    {"image": "images/events3.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              width: 243,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(courses[index]["image"]!),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
