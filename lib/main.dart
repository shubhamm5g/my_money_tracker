import 'package:flutter/material.dart';
import 'package:my_money_tracker/view/every_day_chat/every_day_chat.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: EveryDayChat());
  }
}
