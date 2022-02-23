import 'package:clockalarm/constants/clockalarm_theme.dart';
import 'package:clockalarm/data/providers/clockAlarm_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/pages/main_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mount Album",
      debugShowCheckedModeBanner: false,
      theme: ClockAlarmTheme.ClockAlarmScreenTheme(context),
      home: ChangeNotifierProvider(
        create: (_) => ClockAlarmProvider(),
        child: const MainPage(),
      ),
    );
  }
}
