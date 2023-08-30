import 'package:emart_app/view/categories_screens/categories_screen.dart';
import 'package:emart_app/view/home_screen/home_screen.dart';
import 'package:emart_app/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
        ),
        fontFamily: regular,
      ),
      home: const CategoriesScreen(),
    );
  }
}
