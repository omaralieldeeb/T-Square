import 'package:flutter/material.dart';
import 'package:t_square/features/offers/presentation/views/widgets/offer_dailog.dart';
class OfferBox extends StatelessWidget {
  final String offers;
  const OfferBox({super.key, required this.offers});


  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: () {
      showDialog(context: context, builder: (BuildContext context) {
        return OfferDailog();
      });
    },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  offers,
                  fit: BoxFit.cover,
                  height: 120,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 5),
            const  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today’s offer",
                      style: TextStyle(fontFamily: "Comfortaa", fontSize: 16),),
                    Row(
                      children: [
                        Text(
                          "10% discount on 3\nhours or more",
                          style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontFamily: "Comfortaa"
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color.fromARGB(255, 202, 31, 31),
                          child: Icon(Icons.arrow_forward, color: Colors
                              .white,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}