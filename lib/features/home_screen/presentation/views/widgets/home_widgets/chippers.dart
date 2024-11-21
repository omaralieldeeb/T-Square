import 'package:flutter/material.dart';

class CoursesClip extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.lineTo(0, size.height * .75);
    path.lineTo(size.width * .5, size.height);
    path.lineTo(size.width, size.height * .75);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class OffersClip extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.moveTo(0, size.height * .1);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .35);
    path.lineTo(0, size.height * .1);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class EventsClip extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.moveTo(0, size.height * .35);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .1);
    path.lineTo(0, size.height * .35);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}