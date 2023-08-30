import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/view/account_profile_screens/account_profile_screen.dart';
import 'package:emart_app/view/cart_screens/cart_screen.dart';
import 'package:emart_app/view/categories_screens/categories_screen.dart';
import 'package:emart_app/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController{
  var currentNavIndex = 0.obs;
  var navBody = [
     const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  var navBarItem = [
    BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 26,
        ),
        label: home),
    BottomNavigationBarItem(
        icon: Image.asset(
          icCategories,
          width: 26,
        ),
        label: categories),
    BottomNavigationBarItem(
        icon: Image.asset(
          icCart,
          width: 26,
        ),
        label: cart),
    BottomNavigationBarItem(
        icon: Image.asset(
          icProfile,
          width: 26,
        ),
        label: account),
  ];
}