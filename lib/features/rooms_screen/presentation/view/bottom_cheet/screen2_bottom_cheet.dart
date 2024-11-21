import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';

class Screen2BottomCheet extends StatefulWidget {
  const Screen2BottomCheet({super.key});

  @override
  _Screen2BottomCheetState createState() => _Screen2BottomCheetState();
}

class _Screen2BottomCheetState extends State<Screen2BottomCheet> {
  int? index;

  @override
  Widget build(BuildContext context) {
    // استخدام MediaQuery للحصول على حجم الشاشة
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
      ),
      padding: EdgeInsets.all(screenWidth * 0.04), // padding responsive
      height: screenHeight * 0.4, // تعيين ارتفاع بنسبة مئوية
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select your plan',
            style: TextStyle(
              fontSize: screenWidth * 0.05, // حجم النص responsive
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.02), // Spacing responsive
          Column(
            children: [
              RadioListTile(
                value: 1,
                groupValue: index,
                onChanged: (value) {
                  setState(() {
                    index = value as int?;
                  });
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.watch_later,
                      color: index == 1
                          ? const Color(0xffF04C29)
                          : const Color(0xff6B6B6B),
                    ),
                    SizedBox(width: screenWidth * 0.015), // عرض responsive
                    Text(
                      '60.0 EGP/Hour',
                      style: TextStyle(
                        color: index == 1
                            ? const Color(0xffF04C29)
                            : const Color(0xff6B6B6B),
                        fontSize: screenWidth * 0.045, // حجم النص responsive
                      ),
                    ),
                  ],
                ),
                activeColor: index == 1
                    ? const Color(0xffF04C29)
                    : const Color(0xff6B6B6B),
              ),
              RadioListTile(
                value: 2,
                groupValue: index,
                onChanged: (value) {
                  setState(() {
                    index = value as int?;
                  });
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: index == 2
                          ? const Color(0xffF04C29)
                          : const Color(0xff6B6B6B),
                    ),
                    SizedBox(width: screenWidth * 0.015),
                    Text(
                      '500.0 EGP/Day',
                      style: TextStyle(
                        color: index == 2
                            ? const Color(0xffF04C29)
                            : const Color(0xff6B6B6B),
                        fontSize: screenWidth * 0.045,
                      ),
                    ),
                  ],
                ),
                activeColor: index == 2
                    ? const Color(0xffF04C29)
                    : const Color(0xff6B6B6B),
              ),
              RadioListTile(
                value: 3,
                groupValue: index,
                onChanged: (value) {
                  setState(() {
                    index = value as int?;
                  });
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_rounded,
                      color: index == 3
                          ? const Color(0xffF04C29)
                          : const Color(0xff6B6B6B),
                    ),
                    SizedBox(width: screenWidth * 0.015),
                    Text(
                      '8000.0 EGP/Week',
                      style: TextStyle(
                        color: index == 3
                            ? const Color(0xffF04C29)
                            : const Color(0xff6B6B6B),
                        fontSize: screenWidth * 0.045,
                      ),
                    ),
                  ],
                ),
                activeColor: index == 3
                    ? const Color(0xffF04C29)
                    : const Color(0xff6B6B6B),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KBookScreenView);
              },
              child: Text(
                'Select Date',
                style: TextStyle(
                  fontSize: screenWidth * 0.045, // حجم النص responsive
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffBF1522),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
