import 'package:spark_shop/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget HomeButton(width, height, String? title, icon, onPress) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 24,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}
