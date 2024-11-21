import 'package:flutter/material.dart';
Widget buildAmenityRow(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.circle, color: Color(0xffBF1522),size: 15,),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: Color(0xff515151)),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
  );
}

