import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/features/membership_screen/presentation/views/widgets/membership_button_widget.dart';

class MembershipPage extends StatefulWidget {
  const MembershipPage({super.key});

  @override
  State<MembershipPage> createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  @override
  bool value = false;
  bool value2 = false;

  final int numberOfDots;
  final double lineHeight;
  final Color dotColor;
  final double dotSize;

  _MembershipPageState({
    this.numberOfDots = 3,
    this.lineHeight = 60.0,
    this.dotColor = Colors.red,
    this.dotSize = 10.0,
  });

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.KHomePage);
          },
          icon: Icon(Icons.arrow_back_outlined),
        ),
        title: Text("Membership"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 24),
            child: Row(
              children: [
                Checkbox(
                    side: BorderSide(color: Color(0xffFFCC0A)),
                    activeColor: Colors.red,
                    value: value,
                    onChanged: (bool? x) {
                      setState(() {
                        value = x!;
                      });
                    }),
                Text(
                  "A month",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 5), // Shadow position
                  ),
                ],
              ),
              width: 450,
              height: 180,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(right: 13, left: 15),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(numberOfDots * 2 - 1, (index) {
                        if (index % 2 == 0) {
                          // This is a dot
                          return Container(
                            width: dotSize,
                            height: dotSize,
                            decoration: BoxDecoration(
                              color: dotColor,
                              shape: BoxShape.circle,
                            ),
                          );
                        } else {
                          // This is a space between the dots (dotted line)
                          return SizedBox(
                            height: lineHeight,
                            child: Center(
                              child: Container(
                                width: 2.0,
                                height: lineHeight,
                                color: dotColor.withOpacity(0.5),
                              ),
                            ),
                          );
                        }
                      }),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("1250 LE for one person"),
                    SizedBox(height: 39),
                    Text(
                        "included daily drink and movie night for you and\n your friends"),
                    SizedBox(
                      height: 39,
                    ),
                    Text(
                        "4 invitations for your friends  spend a day in \n Shagaf included drink ")
                  ],
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 24, top: 32),
            child: Row(
              children: [
                Checkbox(
                    side: BorderSide(color: Color(0xffFFCC0A)),
                    activeColor: Colors.red,
                    value: value2,
                    onChanged: (bool? x) {
                      setState(() {
                        value2 = x!;
                      });
                    }),
                Text(
                  "15 Separate days",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 5), // Shadow position
                  ),
                ],
              ),
              width: 450,
              height: 180,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(right: 13, left: 15),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(numberOfDots * 2 - 2, (index) {
                        if (index % 2 == 0) {
                          // This is a dot
                          return Container(
                            width: dotSize,
                            height: dotSize,
                            decoration: BoxDecoration(
                              color: dotColor,
                              shape: BoxShape.circle,
                            ),
                          );
                        } else {
                          // This is a space between the dots (dotted line)
                          return SizedBox(
                            height: lineHeight,
                            child: Center(
                              child: Container(
                                width: 2.0,
                                height: lineHeight,
                                color: dotColor.withOpacity(0.5),
                              ),
                            ),
                          );
                        }
                      }),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("750 LE for one person"),
                    SizedBox(height: 39),
                    Text(
                        "One invitation for your friends  spend a day in \n Shagaf included drink "),
                    SizedBox(
                      height: 39,
                    ),
                  ],
                )
              ]),
            ),
          ),
          MembershipButtonWidget()
        ],
      ),
    );
  }
}
