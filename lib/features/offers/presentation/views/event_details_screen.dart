
import 'package:flutter/material.dart';
import 'package:t_square/features/offers/presentation/views/widgets/eventDetails_body.dart';
import 'package:t_square/features/offers/presentation/views/widgets/eventDetails_footer.dart';
import 'package:t_square/features/offers/presentation/views/widgets/event_carousel.dart';


class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          EventCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: () {Navigator.pop(context);}, child: Icon(Icons.arrow_back_ios_new)),
                Text(
                  "Event",
                  style: TextStyle(
                    fontFamily: "Comfortaa",
                    fontSize: 25,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 202, 31, 31),
                ),
              ],
            ),
          ),
          Positioned(
            top: 250,
            left: 20,
            child: Container(
              width: 90,
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 202, 31, 31),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 17,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Roxy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Comfortaa"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: EventdetailsBody(),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: EventdetailsFooterFooter())
        ],
      ),
    );
  }
}
