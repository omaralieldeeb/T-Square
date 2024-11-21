import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class Home3imageWidget extends StatelessWidget {
  const Home3imageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.RoomsPath);
          },
          child: Image.asset(
            "images/image10.png",
            width: 342,
            height: 200,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRouter.ordersViewRoute);
              },
              child: Image.asset(
                "images/image11.png",
                width: 163,
                height: 200,
              ),
            ),
            SizedBox(
              width: 16, 
            ),
            InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRouter.EventsScroll);
              },
              child: Image.asset(
                "images/image12.png",
                width: 163,
                height: 200,
              ),
            )
          ],
        )
      ],
    );
  }
}
