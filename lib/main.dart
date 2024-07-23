import 'package:flutter/material.dart';

import 'package:my_money_tracker/consts/consts.dart';
import 'package:my_money_tracker/view/every_day_chat/every_day_chat.dart';
import 'package:my_money_tracker/view/testing/testing.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Testing());
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: const BoxConstraints(maxWidth: 200),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                  child: Text(
                      '3432423u49238432843294732984789202394892308409328')),
            ],
          ),
        ),
      ),
    );
  }
}
