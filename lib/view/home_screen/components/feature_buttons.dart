import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget featureButton({String? titles, icon}){
  return Row(
    children: [
      Image.asset(icon, width: 60,fit: BoxFit.fill,),
      10.widthBox,
      titles!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.width(200).roundedSM.padding(const EdgeInsets.all(4)).margin(const EdgeInsets.symmetric(horizontal: 4)).outerShadowSm.make();
}