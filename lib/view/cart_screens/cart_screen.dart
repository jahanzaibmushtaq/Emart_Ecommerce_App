import 'package:spark_shop/consts/consts.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: "Cart is Empty!"
            .text
            .fontFamily(semibold)
            .color(darkFontGrey)
            .makeCentered(),
      ),
    );
  }
}
