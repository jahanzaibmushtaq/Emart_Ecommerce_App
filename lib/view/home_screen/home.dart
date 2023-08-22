import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var navBarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26,), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26,), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26,), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26,), label: account),
    ];
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(items: navBarItem,type: BottomNavigationBarType.fixed,
      backgroundColor: whiteColor,
      selectedItemColor: redColor,
      selectedLabelStyle: TextStyle(fontFamily: semibold),),
    );
  }
}
