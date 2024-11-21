import 'package:flutter/material.dart';
import 'package:t_square/core/widgets/image_widget.dart';
import 'package:t_square/features/authentication_screen/presentation/views/widgets/forgotpassword_widgets/forgotpass_textformfield_widget.dart';

class ForgotpasswordPage extends StatelessWidget {
  const ForgotpasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "images/image3.png",
                      width: 24,
                      height: 24,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageWidget(),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          ForgotpassTextformfieldWidget()
        ],
      ),
    );
  }
}
