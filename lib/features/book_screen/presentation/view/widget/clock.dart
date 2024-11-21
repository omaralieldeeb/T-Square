import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  String _formattedTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour = now.hour > 12 ? now.hour - 12 : now.hour;
    final period = now.hour >= 12 ? 'PM' : 'AM';

    setState(() {
      _formattedTime =
      '${_twoDigits(hour == 0 ? 12 : hour)}:${_twoDigits(now.minute)}:${_twoDigits(now.second)} $period';
    });
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
          ),
          child: AnalogClock(
            dateTime: DateTime.now(),
            isKeepTime: true,
            dialColor: Colors.transparent,
            dialBorderColor: Colors.transparent,
            markingColor: Colors.black,
            hourNumberColor: Colors.black,
            hourNumbers: const ['', '', '3', '', '', '6', '', '', '9', '', '', '12'],
            hourHandColor: Colors.black,
            minuteHandColor: Colors.black,
            secondHandColor: Color(0xffBF1522),
            centerPointColor: Colors.black,
          ),
        ),
        SizedBox(height: 20),
        Text(
          _formattedTime,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}