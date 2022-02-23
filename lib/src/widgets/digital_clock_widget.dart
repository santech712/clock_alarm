import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class DigitalClockWidget extends StatelessWidget {
  const DigitalClockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: DigitalClock(
        digitAnimationStyle: Curves.elasticOut,
        is24HourTimeFormat: false,
        areaDecoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        hourMinuteDigitTextStyle: const TextStyle(
          color: Colors.blueGrey,
          fontSize: 50,
        ),
        amPmDigitTextStyle: const TextStyle(
            color: Colors.blueGrey, fontWeight: FontWeight.bold),
      ),
    );
  }
}
