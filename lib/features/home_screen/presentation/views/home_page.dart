import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/bottomNavigationbar.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/chipath.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/home_adverts_item_wedgit.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/home_image_wedget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onnItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // تعيين خلفية بيضاء للواجهة
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeImageWedget(),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Advertisement",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: HomeAdvertsItemWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 24, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ClipPathes(),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: HomeButtonNavigationWidget(
        currentIndex: _currentIndex,
        x: _onnItemTapped,
      ),
      drawer: Drawer(
        backgroundColor: Color(0xffBF1522),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 73, bottom: 32),
              child: ListTile(
                title: Image.asset(
                  "images/tsquare.jpg",
                  width: 95,
                  height: 159,
                ),
              ),
            ),
            _buildDrawerItem(Icons.person, 'Profile', 0, context),
            _buildDrawerItem(Icons.language, 'English', 1, context),
            _buildDrawerItem(Icons.shopping_cart, 'Orders', 2, context),
            _buildDrawerItem(Icons.notifications_active, 'Notification', 3, context),
            _buildDrawerItem(Icons.star_rate, 'Rating', 4, context),
            _buildDrawerItem(Icons.contacts, 'Contact Us', 5, context),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 44, bottom: 32),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: TextStyle(color: Colors.white)),
        selected: _selectedIndex == index,
        onTap: () {
          _onItemTapped(index);
          GoRouter.of(context).push(AppRouter.KProfilePage);
        },
      ),
    );
  }
}
