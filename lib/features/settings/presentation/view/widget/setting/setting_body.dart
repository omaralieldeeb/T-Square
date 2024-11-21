import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // استيراد GoRouter
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/bottomNavigationbar.dart'; // تأكد من مسار AppRouter

class SettingsBody extends StatefulWidget {
  @override
  State<SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.notifications_rounded, size: 24, color: Color(0xff111111),
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff111111),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Icon(
                      Icons.menu, size: 24, color: Color(0xff111111),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingItem(
                    icon: Icons.person_outline,
                    text: 'Profile',
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KProfilePage);
                    },
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                  SizedBox(height: 24),
                  SettingItem(
                    icon: Icons.language,
                    text: 'English',
                    trailing: Icon(Icons.keyboard_arrow_down, color: Colors.red),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                  SizedBox(height: 24),
                  SettingItem(
                    icon: Icons.notifications_outlined,
                    text: 'Notification',
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KNotificationPage);
                    },
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                  SizedBox(height: 24),
                  SettingItem(
                    icon: Icons.contact_support_outlined,
                    text: 'Contact Us',
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KContactUsPage);
                    },
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                  SizedBox(height: 24),
                  SettingItem(
                    icon: Icons.info_outline,
                    text: 'About Us',
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: HomeButtonNavigationWidget(
          currentIndex: _currentIndex,
          x: _onItemTapped,
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget? trailing;
  final VoidCallback? onTap;

  SettingItem({required this.icon, required this.text, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(icon, color: Color(0xffBF1522)),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
