import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class ProfileBody extends StatelessWidget {
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
                    "Profile",
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
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  buildInputField(
                    label: "Full Name",
                    hintText: "Name.....",
                    icon: null,
                  ),
                  SizedBox(height: 20),
                  buildInputField(
                    label: "Phone Number",
                    hintText: "01063227758",
                    icon: null,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 20),
                  buildInputField(
                    label: "Change Password",
                    hintText: "Enter your password",
                    icon: FontAwesomeIcons.lock,
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  buildInputField(
                    label: "Confirm Password",
                    hintText: "Confirm your password",
                    icon: FontAwesomeIcons.lock,
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInputField({
    required String label,
    required String hintText,
    IconData? icon,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: icon != null ? Icon(icon) : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
