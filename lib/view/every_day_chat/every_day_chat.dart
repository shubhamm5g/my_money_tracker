import 'package:flutter/foundation.dart';
import 'package:my_money_tracker/consts/consts.dart';

class EveryDayChat extends StatelessWidget {
  const EveryDayChat({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: selfChatAppBar(context), bottomSheet: bottomSheet(context)),
    );
  }

  Container bottomSheet(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 3),
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
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
            padding: const EdgeInsets.all(8.0),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Enter")]),
          )
              .box
              .color(greyColor)
              .width(context.screenWidth * 0.29)
              .roundedLg
              .make()
        ],
      ),
    );
  }

  AppBar selfChatAppBar(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      toolbarHeight: 110,
      backgroundColor: whiteColor,
      title: SizedBox(
        height: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    10.widthBox,
                    const SizedBox()
                        .box
                        .size(45, 45)
                        .roundedFull
                        .color(greyColor)
                        .make(),
                    const WidthBox(5),
                    Column(
                      children: ["Self Chat (Monthly)".text.bold.make()],
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.filter_list)),
                    IconButton(
                        onPressed: () {
                          if (kDebugMode) {
                            print("object");
                          }
                        },
                        icon: const Icon(
                          FontAwesomeIcons.ellipsisVertical,
                          size: 20,
                        ))
                  ],
                )
              ],
            ),
            moneyBar(context).box.height(50).make(),
          ],
        ),
      ),
    );
  }

  Row moneyBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: context.screenWidth * 0.33333333333,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Spent".text.size(16).make(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "\$ ".text.color(Colors.red).size(14).make(),
                  "0".numCurrency.text.color(Colors.red).size(14).make(),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: context.screenWidth * 0.33333333333,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Income".text.size(16).make(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "\$ ".text.color(Colors.green).size(14).make(),
                  "0".numCurrency.text.color(Colors.green).size(14).make(),
                ],
              )
            ],
          ),
        ),
        if (true)
          SizedBox(
            width: context.screenWidth * 0.33333333333,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Total".text.size(16).make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "\$ ".text.color(Colors.green).size(14).make(),
                    "0".numCurrency.text.color(Colors.green).size(14).make(),
                  ],
                )
              ],
            ),
          )
      ],
    );
  }
}
