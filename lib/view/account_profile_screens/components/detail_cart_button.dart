import 'package:spark_shop/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget detailCartButton({String? title, width, String? count}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(fontGrey).size(16).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  ).box.rounded.white.width(width).height(80).padding(EdgeInsets.all(4)).make();
}
