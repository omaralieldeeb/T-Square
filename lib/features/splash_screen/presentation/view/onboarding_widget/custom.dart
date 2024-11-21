import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/core/utils/style.dart';

class Custom extends StatelessWidget {
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24,top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
             // Navigator.pushNamed(context, "auth");
              GoRouter.of(context).push(AppRouter.KLoginPage);
            },
            child: Text("Skip",
                style: Styles.textStyle17.copyWith(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
