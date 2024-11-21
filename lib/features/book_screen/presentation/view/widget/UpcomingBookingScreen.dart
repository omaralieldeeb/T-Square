import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/bottomNavigationbar.dart';
import 'package:t_square/features/book_screen/presentation/view/widget/clock.dart';

class UpcomingBookingScreen extends StatefulWidget {
  const UpcomingBookingScreen({super.key});

  @override
  _UpcomingBookingScreenState createState() => _UpcomingBookingScreenState();
}

class _UpcomingBookingScreenState extends State<UpcomingBookingScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            Container(
              height: 300,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/tsquare.jpg"),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white10.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  ClockScreen(),
                ],
              ),
            ),
            SizedBox(height: 6),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flutter Course",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff111111),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Cancellation Deadline: 11/2/2024",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 16,
                              color: Color(0xffBF1522),
                            ),
                            SizedBox(width: 1.5),
                            Text(
                              "Date",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff262626),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "18/2/2024",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4E4E4E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later,
                              size: 16,
                              color: Color(0xffBF1522),
                            ),
                            SizedBox(width: 1.5),
                            Text(
                              "Time",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff262626),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "09:00 Am",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4E4E4E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.event_seat,
                              size: 16,
                              color: Color(0xffBF1522),
                            ),
                            SizedBox(width: 1.5),
                            Text(
                              "Seats",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff262626),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "x1",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4E4E4E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              size: 16,
                              color: Color(0xffBF1522),
                            ),
                            SizedBox(width: 1.5),
                            Text(
                              "Deposit",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff262626),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "50.00 LE",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4E4E4E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              size: 16,
                              color: Color(0xffBF1522),
                            ),
                            SizedBox(width: 1.5),
                            Text(
                              "The rest of the money",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff262626),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "30.00 LE",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4E4E4E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.coffee,
                              size: 16,
                              color: Color(0xffBF1522),
                            ),
                            SizedBox(width: 1.5),
                            Text(
                              "Coffee",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff262626),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "20.00 LE",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4E4E4E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 342,
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    GoRouter.of(context)
                                        .push(AppRouter.KBookScreenView);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffBF1522),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Extra Time",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    GoRouter.of(context).push(AppRouter.ordersViewRoute);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Add Items",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: HomeButtonNavigationWidget(
        currentIndex: _currentIndex,
        x: _onItemTapped,
      ),
    );
  }
}
