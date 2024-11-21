import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/features/rooms_screen/presentation/view/widgets/room_box.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {

  final List<Map<String, String>> courses = [
    {"title": "Flutter", "image": "images/flutter1.jpg"},
    {"title": "Full Stack", "image": "images/fullstack2.jpg"},
    {"title": "AI", "image": "images/ai.jpg"},
    {"title": "C++", "image": "images/cplusplus.jpg"},
    {"title": "Digital Marketing", "image": "images/dmp.jpg"},
    {"title": "PFA", "image": "images/pfa.jpg"},
    {"title": "UI UX", "image": "images/uiux.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Courses",
          style: TextStyle(fontFamily: "Comfortaa", color: Colors.black),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.KHomePage);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return RoomBox(
            title: courses[index]["title"] ?? "",
            image: courses[index]["image"] ?? "",
            id: index.toString(),
          );
        },
        itemCount: courses.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
