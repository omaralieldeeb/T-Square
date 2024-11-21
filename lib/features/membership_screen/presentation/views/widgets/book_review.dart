import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
class BookReview extends StatelessWidget {
  const BookReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:const EdgeInsets.only(top: 20, right: 104, left: 25, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap:(){
                        GoRouter.of(context).push(AppRouter.KBookScreenView);
                      },
                      child:const Icon(Icons.arrow_back, color: Color(0xff111111))),
                  const Text(
                    "Booking Review",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff111111),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 170,
              width: 342,
              padding: const EdgeInsets.all(12.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // عنوان Booking Details
                  const Text(
                    "Booking Details",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: List.generate(4, (index) {
                          return Column(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                              if (index < 3)
                                Container(
                                  width: 2,
                                  height: 20,
                                  color: Colors.red,
                                ),
                            ],
                          );
                        }),
                      ),
                      const SizedBox(width: 12),


                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Tus, 13 Feb 2024 04:00 PM'),
                            const SizedBox(height: 10),
                            const Text('Tus, 13 Feb 2024 10:00 PM'),
                            const SizedBox(height: 10),
                            const Text('300 LE from 1 to 6 persons'),
                            const SizedBox(height: 10),
                            const Text('Without helium balloons'),
                          ],
                        ),
                      ),
                      // زر Change
                      SizedBox(
                        width: 90,
                        child: ElevatedButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.KSelectDateTime);
                          },
                          child: const Text(
                            'Change',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF04C29),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffdfaba2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24,),
            Container(
              height: 120,
              width: 342,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Method',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                    Text(
                      'You will not be debited until your booking is confirmed',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff464646),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_circle,color: Color(0xffF04C29),size: 16,),
                        SizedBox(width: 1.5,),
                        Text(
                          'Add card',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff494949),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24,),
            Container(
              height: 230,
              width: 342,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discounts Available',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        Container(
                          width: 109,
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            child: Text(
                              'Add promo',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffF04C29),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:const Color(0xffdfaba2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    width: 300,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xff9A9A9A),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.local_activity,size: 20,),
                          Text(
                            "30% off  10 booking (up to EGP 150)",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9A9A9A),
                            ),
                          ),
                          Container(
                            width: 90,
                            child: ElevatedButton(
                              onPressed: () {

                              },
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffF04C29),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:const Color(0xffdfaba2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Booking Charges",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111111),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xda9a9a9a),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "x1 Day EGP 100.0 x 1 Seat",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff464646),
                          ),
                        ),
                        Text(
                          "EGP 100.0",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111111),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Due",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffF04C29),
                          ),
                        ),
                        Text(
                          "EGP 100.0",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffF04C29),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text(
                  'Book',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color(0xff20473E),
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.KHomePage);
                },
                child: Text(
                  'Cancellation Policy',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff919393),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white
                ),
              ),
            ),
            const SizedBox(height: 26,),
          ],
        ),
      ),
    );
  }
}