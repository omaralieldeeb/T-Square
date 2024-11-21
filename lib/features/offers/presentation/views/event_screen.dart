
import 'package:flutter/material.dart';
import 'package:t_square/core/utils/style.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/bottomNavigationbar.dart';
import 'package:t_square/features/offers/presentation/views/widgets/event_scroll.dart';


class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:   Colors.white,
        title: Text(
          'Events',
          style: Styles.textStyle16.copyWith(color: Colors.black54),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.notifications_active_outlined,size: 25,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.list,size: 30,),
            onPressed: () {},
          ),
        ],
      ),
      body: EventScroll(),
      bottomNavigationBar: HomeButtonNavigationWidget(
        currentIndex: _currentIndex,
        x: _onItemTapped,
      ),
    );
  }
}
