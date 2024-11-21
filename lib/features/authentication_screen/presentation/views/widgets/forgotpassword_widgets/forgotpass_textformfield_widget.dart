import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class ForgotpassTextformfieldWidget extends StatelessWidget {
  const ForgotpassTextformfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 345,
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 19, left: 12, bottom: 13),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forgot Your Password?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                      "Enter your phone number, we will send you confirmation code"),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 9, right: 10, top: 47, bottom: 10),
            child: Text(
              "Phone Number",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9, right: 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter Phone Number",
                  prefixIcon: Icon(Icons.phone)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.KVerificationPage);
              },
              child: Text(
                "Reset Password",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
            margin: EdgeInsets.only(top: 22, left: 9, right: 10),
            width: double.maxFinite,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 202, 31, 31),
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
