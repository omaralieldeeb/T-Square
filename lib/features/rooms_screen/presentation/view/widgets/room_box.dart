import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class RoomBox extends StatelessWidget {
  final String title;
  final String image;
  final String id;

  const RoomBox({
    super.key,
    required this.title,
    required this.image,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: InkWell(
        onTap: () {
          // إرسال البيانات عبر extra إلى الصفحة التالية
          GoRouter.of(context).push(
            AppRouter.KRoomsDetails,
            extra: {
              'title': title,
              'image': image,
              'id': id,
            },
          );
        },
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                  child: Image.asset(
                    image,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Icon(Icons.favorite_border_rounded, color: Colors.red),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 10.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.star, color: Colors.white, size: 16),
                        SizedBox(width: 4),
                        Text(
                          "4.7",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
