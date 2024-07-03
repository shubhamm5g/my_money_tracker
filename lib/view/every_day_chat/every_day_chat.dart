import 'package:flutter/material.dart';
import 'package:my_money_tracker/consts/consts.dart';

class EveryDayChat extends StatelessWidget {
  const EveryDayChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const SizedBox()
                  .box
                  .size(45, 45)
                  .roundedFull
                  .color(greyColor)
                  .make(),
              const WidthBox(5),
              const Column(
                children: [Text("Hello")],
              )
            ],
          ),
        ),
        bottomSheet: Row(
          children: [
            Container(
              color: whiteColor,
              width: context.screenWidth * 0.7,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Type Here",
                    isCollapsed: true,
                    contentPadding: const EdgeInsets.all(10),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: greyColor),
                        borderRadius: BorderRadius.circular(100)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: greyColor),
                        borderRadius: BorderRadius.circular(100)),
                    filled: true,
                    fillColor: greyColor),
              ),
            ),
            Container(
              height: 42,
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Enter")]),
            )
                .box
                .color(greyColor)
                .width(context.screenWidth * 0.3)
                .roundedLg
                .make()
          ],
        ));
  }
}
