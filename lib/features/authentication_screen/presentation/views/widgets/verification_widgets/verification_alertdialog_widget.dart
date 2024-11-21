import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class VerificationAlertdialogWidget extends StatelessWidget {
  const VerificationAlertdialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Image.asset(
            "images/image2.png",
            width: 200,
            height: 200,
          ),
          content: Container(
            height: 200,
            width: 250,
            child: const Column(
              children: [
                Text(
                  "Success",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "You have successfully reset ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA1A8B0)),
                ),
                Center(
                  child: Text("your password.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA1A8B0))),
                )
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.KHomePage);
                  },
                  child: Text(
                    "Done",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // margin: EdgeInsets.only(top: 22, left: 9, right: 10),
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffBF1522),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            //TextButton(
            //  onPressed: () => GoRouter.of(context).push(AppRouter.KLoginPage),
            // child: const Text('Cancel'),
            //),
            //TextButton(
            //  onPressed: () => GoRouter.of(context).push(AppRouter.KHomePage),
            //  child: const Text('OK'),
            //),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Verify",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          margin: EdgeInsets.only(top: 22, left: 9, right: 10),
          width: double.maxFinite,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xffBF1522),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
