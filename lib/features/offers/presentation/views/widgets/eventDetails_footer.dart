import 'package:flutter/material.dart';

class EventdetailsFooterFooter extends StatelessWidget {
  const EventdetailsFooterFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.3),
                blurRadius: 4,
                spreadRadius: 1,
                offset: Offset(0, -3))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  '200',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Comfortaa",
                      color: Color.fromARGB(255, 202, 31, 31)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("EGP/Person",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Comfortaa",
                        color: Color.fromARGB(255, 202, 31, 31))),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Book Now",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Comfortaa",
                  fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(140, 40),
                elevation: 6,
                shadowColor: Colors.black,
                backgroundColor: Color.fromARGB(255, 202, 31, 31),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          )
        ],
      ),
    );
  }
}
