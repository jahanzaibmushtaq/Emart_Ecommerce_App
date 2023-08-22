import 'package:flutter/material.dart';

import '../consts/consts.dart';

Widget CustomElevatedButton(String? title, onPress, textColor, color) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.all(12),
      ),
      onPressed: onPress,
      child: title!.text.fontFamily(bold).color(textColor).make());
}
