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
              width: context.screenWidth,
              child: TextField(
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(10),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                        borderRadius: BorderRadius.circular(100)),
                    filled: true,
                    fillColor: greyColor),
              ),
            )
          ],
        ));
  }
}
