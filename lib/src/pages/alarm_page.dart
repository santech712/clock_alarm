import 'package:clockalarm/data/providers/clockAlarm_provider.dart';
import 'package:clockalarm/src/widgets/common_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:provider/provider.dart';

class AlarmPage extends StatelessWidget {

  AlarmPage({Key? key}) : super(key: key);

  final DateTime _formatedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alarm',
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today, color: Theme.of(context).buttonTheme.colorScheme!.primary),
            onPressed: (){
              FlutterAlarmClock.showAlarms();
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 150,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: const Offset(0, 2),
                    )
                  ]
              ),

              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                initialDateTime: _formatedDate,
                onDateTimeChanged: (DateTime newDateTime){
                  int hour = newDateTime.hour;
                  int minute = newDateTime.minute;
                  Provider.of<ClockAlarmProvider>(context, listen: false).changeAlarmTime(hour, minute);
                },
                use24hFormat: true,
                minuteInterval: 1,
              )
          ),
          CommonButton(
            buttonName: 'Save',
            marginTop: 50.0,
            height: 40.0,
            width: MediaQuery.of(context).size.width - 80,
            borderRadius: 25.0,
            function: (){
              Provider.of<ClockAlarmProvider>(context, listen: false).saveAlarmTime();
            },
          )
        ],
      ),
    );
  }
}

