import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupTextformfieldWidget extends StatelessWidget {
  const SignupTextformfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        padding: EdgeInsets.all(screenWidth * 0.05),
        width: screenWidth * 0.85,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(screenWidth * 0.05),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Phone Number",
              style: TextStyle(
                fontSize: screenWidth * 0.04, // نسبة من العرض
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                hintText: "Enter Phone Number",
                prefixIcon: Icon(Icons.phone, size: screenWidth * 0.06),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              "User Name",
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                hintText: "Enter User Name",
                prefixIcon: Icon(Icons.person, size: screenWidth * 0.06),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              "Password",
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                hintText: "Enter Your Password",
                prefixIcon: Icon(Icons.lock, size: screenWidth * 0.06),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                hintText: "Confirm Password",
                prefixIcon: Icon(Icons.lock, size: screenWidth * 0.06),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: screenHeight * 0.06, // نسبة من الارتفاع
              decoration: BoxDecoration(
                color: Color(0xffBF1522),
                borderRadius: BorderRadius.circular(screenWidth * 0.03),
              ),
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.045,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: screenWidth * 0.035),
                ),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Color(0xffBF1522),
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}