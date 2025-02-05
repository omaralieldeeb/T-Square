import 'package:flutter/material.dart';


class HomeImageWedget extends StatelessWidget {
  const HomeImageWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      //GoRouter.of(context).push(AppRouter.KHomeDrawerPage);
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Image.asset(
                      "images/image5.png",
                      height: 24,
                      width: 24,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "images/image6.png",
                      height: 24,
                      width: 24,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 88, left: 20),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Roxy button pressed");
                    },
                    icon: Icon(Icons.location_pin, color: Colors.white),
                    label: Text("Location",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffBF1522),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Learning Hub",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Container(
                    color: Color(0xffBF1522),
                    width: 52,
                    height: 22,
                    child: Row(
                      children: [
                        Image.asset(
                          "images/image8.png",
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("images/event6.jpg"))),
    );
  }
}
