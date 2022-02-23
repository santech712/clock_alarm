import 'package:clockalarm/data/providers/clockAlarm_provider.dart';
import 'package:clockalarm/src/widgets/analog_clock_widget.dart';
import 'package:clockalarm/src/widgets/digital_clock_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ClockAlarmProvider>(
      builder: (context, component, child){
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Clock',
              style: Theme.of(context).textTheme.headline6,
            ),
            actions: [
              CupertinoSwitch(
                value: component.isShowDigital,
                onChanged: (value){
                  Provider.of<ClockAlarmProvider>(context, listen: false).changeShowDigital(value);
              })
            ],
          ),
          body: Center(
            child: component.isShowDigital
                ? AnalogClockWidget()
                : DigitalClockWidget()
          ),
        );
      },
    );
  }
}

