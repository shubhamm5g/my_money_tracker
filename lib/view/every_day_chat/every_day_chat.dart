import 'package:flutter/foundation.dart';
import 'package:my_money_tracker/consts/consts.dart';

class EveryDayChat extends StatelessWidget {
  const EveryDayChat({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: selfChatAppBar(context),
      body: chatScreen(context),
    ));
  }

  Column chatScreen(BuildContext context) {
    return Column(
      children: [chats(), bottomSheet(context)],
    );
  }

  Expanded chats() {
    return Expanded(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 10),
          child: Column(children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor,
                      ),
                      child: const Center(
                          child: Text(
                        "+200",
                        style: TextStyle(color: greenColor),
                      )),
                    ),
                    Container(
                      constraints:
                          BoxConstraints(maxWidth: context.screenWidth * 0.7),
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: greyColor,
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Text("0 "),
                          ),
                          Text(
                            "20:20",
                            style:
                                TextStyle(fontSize: 10, color: darkGreyColor),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            )
          ]),
        ),
      ),
    );
  }

  Container bottomSheet(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 3),
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                        color: darkGreyColor,
                        spreadRadius: 0.11,
                        blurRadius: 0.11,
                        offset: Offset(0.1, 0.1),
                      )
                    ]),
                child: const TextField(
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: "Type Here",
                      isCollapsed: true,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: greyColor),
                ),
              ),
            ),
          ),
          5.widthBox,
          Container(
            width: 100,
            decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                      color: darkGreyColor,
                      spreadRadius: 0.1,
                      blurRadius: 0.1,
                      offset: Offset(0.1, 0.5))
                ]),
            height: 42,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Enter")]),
          )
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
                    const SizedBox(
                      child: Icon(
                        FontAwesomeIcons.solidUser,
                        color: darkGreyColor,
                      ),
                    ).box.size(45, 45).roundedFull.color(greyColor).make(),
                    const WidthBox(10),
                    Column(
                      children: ["Self Chat (2 Month)".text.make()],
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
                  "\$ ".text.color(redColor).size(14).make(),
                  "0".numCurrency.text.color(redColor).size(14).make(),
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
                  "\$ ".text.color(greenColor).size(14).make(),
                  "0".numCurrency.text.color(greenColor).size(14).make(),
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
