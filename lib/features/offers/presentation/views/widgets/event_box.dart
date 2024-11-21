import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';


class EventBox extends StatelessWidget {
    final String imagePath;

  const EventBox({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.EventReview
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  height: 120,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  children: [
                    Text(
                      "10% discount on 3\nhours or more",
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontFamily: "Comfortaa"),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor:Color.fromARGB(255, 202, 31, 31),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
