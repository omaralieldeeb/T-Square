import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class HomeButtonNavigationWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) x;

  const HomeButtonNavigationWidget({
    Key? key,
    required this.currentIndex,
    required this.x,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.KHomePage);
                },
                icon: Icon(Icons.home_outlined, size: 25, color: Colors.black),
              ),
              Text('Home', style: TextStyle(fontSize: 12, color: Colors.black)),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.KBookHistoryScreen);
                },
                icon: Icon(Icons.bookmark_add_outlined, size: 25, color: Colors.black),
              ),
              Text('Book', style: TextStyle(fontSize: 12, color: Colors.black)),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/tsquare.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.OffersScroll);
                },
                icon: Icon(Icons.local_offer_sharp, size: 25, color: Colors.black),
              ),
              Text('Offers', style: TextStyle(fontSize: 12, color: Colors.black)),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.KSettingPage);
                },
                icon: Icon(Icons.menu, size: 25, color: Colors.black),
              ),
              Text('Settings', style: TextStyle(fontSize: 12, color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
