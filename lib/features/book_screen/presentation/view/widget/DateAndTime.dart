import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/features/book_screen/presentation/view/widget/date_widget.dart';
import 'package:t_square/features/book_screen/presentation/view/widget/time_widget.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({super.key});

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  int seats = 1;
  bool isLoading = false;

  void addSeats() {
    setState(() {
      seats++;
    });
  }
  void minusSeats() {
    setState(() {
      if (seats > 1) seats--;
    });
  }

  void selectDate() {
    setState(() {
      isLoading = true;
    });
    Future.delayed(Duration(seconds: 1), () {
      GoRouter.of(context).push(AppRouter.KBookReviewScreen);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 104, left: 25, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap:(){
                      GoRouter.of(context).push(AppRouter.KRoomsDetails);
                    },
                    child: Icon(Icons.arrow_back, color: Color(0xff111111))),
                const Text(
                  "Select date and time",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111111),
                  ),
                ),
              ],
            ),
          ),
          CalendarWidget(),
          SizedBox(height: 18),
          TimeWidget(),
          SizedBox(height: 24),
          Container(
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.person_outline,size: 24,),
                        SizedBox(width: 1.5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "Number of seats",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 80,),
                    Container(
                      padding:const EdgeInsets.all(1.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: minusSeats,
                        icon:const Icon(Icons.remove, size: 24, color: Color(0xf7f48b76)),
                      ),
                    ),
                    const SizedBox(width: 4,),
                    Text('$seats',style: TextStyle(fontSize: 20),),
                    const SizedBox(width: 4,),
                    Container(
                      padding:const EdgeInsets.all(1.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: addSeats,
                        icon:const Icon(Icons.add, size: 24, color: Color(0xffF04C29)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 106),
          Container(
            width: 342,
            height: 45,
            child: ElevatedButton(
              onPressed: isLoading ? null : selectDate,
              child: Text(
                isLoading ? 'Loading' : 'Select Date',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: isLoading ? const Color(0xff919393) : const Color(0xffBF1522),
              ),
            ),
          ),
        ],
      ),
    );
  }
}