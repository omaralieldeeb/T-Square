import 'package:flutter/material.dart';
import 'package:t_square/features/book_screen/presentation/view/widget/PastBookingScreen.dart';
import 'package:t_square/features/book_screen/presentation/view/widget/UpcomingBookingScreen.dart';

class BookHistoryScreen extends StatefulWidget {
  const BookHistoryScreen({super.key});

  @override
  _BookHistoryScreenState createState() => _BookHistoryScreenState();
}

class _BookHistoryScreenState extends State<BookHistoryScreen> {
  bool isPastSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.notifications_rounded, size: 24, color: Color(0xff111111),
                ),
                Text("Booking History", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff111111),),
                ),
                InkWell(
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                  child: Icon(
                    Icons.menu, size: 24, color: Color(0xff111111),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: 342,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isPastSelected = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isPastSelected ? Color(0xffBF1522) : Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Past", style: TextStyle(fontSize: 14, color: isPastSelected ? Colors.white : Color(0xff1F1F1F), fontWeight: FontWeight.w400,),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isPastSelected = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isPastSelected ? Colors.grey[200] : Color(0xffBF1522),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Upcoming", style: TextStyle(fontSize: 16, color: isPastSelected ? Color(0xff1F1F1F) : Colors.white,),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: isPastSelected ? PastBookingScreen() :  UpcomingBookingScreen(),
          ),
        ],
      ),
    );
  }
}
