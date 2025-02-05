import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:t_square/core/utils/assets.dart';

class EventCarousel extends StatefulWidget {
  @override
  State<EventCarousel> createState() => _EventCarouselState();
}

class _EventCarouselState extends State<EventCarousel> {
  int CurrImg = 0;

  Widget indicator(int idx) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: CurrImg == idx
            ? Color.fromARGB(255, 202, 31, 31)
            : Color.fromARGB(255, 202, 31, 31).withOpacity(.6),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }

  final List<ImageProvider> _ImAgeList = [
    AssetImage(OffersFeture.event1,),
    AssetImage(OffersFeture.event2),
    AssetImage(OffersFeture.event3),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged:(index,reason){
                setState(() {
                  CurrImg=index;
                });
              },
              height: MediaQuery.of(context).size.height * 0.4,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 700),
              autoPlayCurve: Curves.easeIn,
              enableInfiniteScroll: true,
              initialPage: 0,
              viewportFraction: 1,

            ),
            items: _ImAgeList.map((container) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: container,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(top:290 ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_ImAgeList.length, (Index) {
                return indicator(Index);
              }),
            ),
          )
        ]);
  }
}
