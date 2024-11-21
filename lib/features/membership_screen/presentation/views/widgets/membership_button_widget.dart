import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class MembershipButtonWidget extends StatelessWidget {
  const MembershipButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160),
      child: Container(
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.KSelectDateTime);
          },
          child: Text(
            "Next",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        width: 342,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xff20473E)),
      ),
    );
  }
}
