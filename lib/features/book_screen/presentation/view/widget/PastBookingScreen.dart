import 'package:flutter/material.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/bottomNavigationbar.dart';
class PastBookingScreen extends StatefulWidget {
  const PastBookingScreen({super.key});

  @override
  State<PastBookingScreen> createState() => _PastBookingScreenState();
}

class _PastBookingScreenState extends State<PastBookingScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Flutter Course", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff111111),),),
                          SizedBox(height: 18,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_month,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("18/2/2024", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.watch_later,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Time", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("09:00 Am", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.event_seat,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text(" Seats", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("x1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.attach_money,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Deposit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("50.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.attach_money,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("The rest of the money", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("30.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.coffee,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Coffee", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("20.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Booking Status", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                              Text("Paid", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffBF1522),),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("UI UX Course", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff111111),),),
                          SizedBox(height: 18,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_month,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("18/2/2024", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.watch_later,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Time", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("09:00 Am", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.event_seat,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text(" Seats", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("x1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.attach_money,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Deposit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("50.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.attach_money,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("The rest of the money", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("30.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.coffee,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Coffee", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("20.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Full Stack Course", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff111111),),),
                          SizedBox(height: 18,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_month,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("18/2/2024", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.watch_later,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Time", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("09:00 Am", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.event_seat,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text(" Seats", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("x1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.attach_money,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Deposit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("50.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.attach_money,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("The rest of the money", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("30.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.coffee,size: 16,color: Color(0xffBF1522),),
                                  SizedBox(width: 1.5,),
                                  Text("Coffee", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                                ],
                              ),
                              Text("20.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeButtonNavigationWidget(
        currentIndex: _currentIndex,
        x: _onItemTapped, 
      ),
    );
  }
}