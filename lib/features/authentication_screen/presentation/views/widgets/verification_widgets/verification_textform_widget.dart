import 'package:flutter/material.dart';
import 'package:t_square/features/authentication_screen/presentation/views/widgets/verification_widgets/verification_alertdialog_widget.dart';

class VerificationTextformWidget extends StatelessWidget {
  const VerificationTextformWidget({super.key});

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
                    "Enter Verification Code",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(
                        "Enter code that we have sent to your number\n 012345678*** "),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 30, child: TextFormField()),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(width: 40, child: TextFormField()),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(width: 40, child: TextFormField()),
                      SizedBox(
                        width: 50,
                      ),
                      SizedBox(width: 40, child: TextFormField()),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(width: 40, child: TextFormField()),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(width: 40, child: TextFormField()),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          VerificationAlertdialogWidget()
        ],
      ),
    );
  }
}
