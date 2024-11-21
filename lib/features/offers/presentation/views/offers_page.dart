import 'package:flutter/material.dart';
import 'package:t_square/core/utils/style.dart';
import 'package:t_square/features/home_screen/presentation/views/widgets/home_widgets/bottomNavigationbar.dart';
import 'package:t_square/features/offers/presentation/views/widgets/offer_scroll.dart';
class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(index);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        title:  Text(
          'Offers',
          style:Styles.textStyle16.copyWith(color: Colors.black54), 
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
      body: OfferScroll(),
      bottomNavigationBar: HomeButtonNavigationWidget(
        currentIndex: _currentIndex,
        x: _onItemTapped,
      ),
    );
  }
}