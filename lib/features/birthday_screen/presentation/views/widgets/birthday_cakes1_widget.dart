import 'package:flutter/material.dart';

class BirthdayCakes1Widget extends StatelessWidget {
  const BirthdayCakes1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 15,right: 10),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 5), // Shadow position
              ),
            ],
          ),
          width: 450,
          height: 80,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, top: 10, bottom: 10, right: 20),
                child: Image.asset("images/image19.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, right: 170, bottom: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("From 1 to 6 person"), Text("300 LE")],
                ),
              ),
              ClipOval(
                child: Material(
                  color: Color.fromARGB(255, 160, 158, 158), // Button color
                  child: InkWell(
                    splashColor: Colors.grey, // Splash color
                    onTap: () {},
                    child: SizedBox(
                      width: 35, // Width of the circle
                      height: 35, // Height of the circle
                      child: Icon(Icons.add, color: Colors.red),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
