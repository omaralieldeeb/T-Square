import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class NotificationsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 25, left: 25, bottom: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KSettingPage);
                    },
                    child: Icon(Icons.arrow_back, color: Color(0xff111111)),
                  ),
                  Spacer(),
                  const Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff111111),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.all(16.0),
                itemCount: 5,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return NotificationTile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage('images/tsquare.jpg'),
        ),
        SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flutter course next Wednesday, first day',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                'today 12:00 pm',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
