import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class AnalogClockWidget extends StatelessWidget {
  const AnalogClockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnalogClock(
        decoration: BoxDecoration(
            border: Border.all(width: 8.0, color: Colors.green),
            color: Colors.transparent,
            shape: BoxShape.circle),
        width: 200.0,
        isLive: true,
        hourHandColor: Colors.black,
        minuteHandColor: Colors.black,
        showSecondHand: true,
        numberColor: Colors.black87,
        showNumbers: true,
        textScaleFactor: 1.4,
        showTicks: true,
        showDigitalClock: false,
      ),
    );
  }
}
