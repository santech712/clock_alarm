import 'package:clockalarm/data/providers/clockAlarm_provider.dart';
import 'package:clockalarm/src/pages/alarm_page.dart';
import 'package:clockalarm/src/pages/clock_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static List<Widget> pages = <Widget>[
    ClockPage(),
    AlarmPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ClockAlarmProvider>(
      builder: (context, components, child){
        return Scaffold(
          body: SafeArea(
              child: pages[components.selectedTab]
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
            currentIndex: components.selectedTab,
            onTap: (index){
              Provider.of<ClockAlarmProvider>(context, listen: false).changeSelectedTab(index);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.watch_later_outlined),
                  label: 'Clock'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.alarm),
                  label: 'Alarm'
              ),
            ],
          ),
        );
      },
    );
  }
}

