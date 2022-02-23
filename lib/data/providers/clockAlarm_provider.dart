import 'package:flutter/cupertino.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class ClockAlarmProvider extends ChangeNotifier{

  int selectedTab = 0;
  bool isShowDigital = false;

  int hour = 0;
  int minute = 0;

  void changeSelectedTab(int value) {
    selectedTab = value;
    notifyListeners();
  }

  void changeShowDigital (bool value){
    isShowDigital = value;
    notifyListeners();
  }

  void changeAlarmTime(int hour_value, int minite_value){
    hour = hour_value;
    minute = minite_value;
    notifyListeners();
  }

  void saveAlarmTime(){
    FlutterAlarmClock.createAlarm(hour, minute);
  }

}