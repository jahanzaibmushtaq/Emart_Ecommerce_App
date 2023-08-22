import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/view/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../custom_widgets/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(()=>const LoginScreen());
    });
  }
  @override
  void initState() {
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Image.asset(icSplashBg, width: 300)),
            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            appname.text.white.size(18).fontFamily(semibold).make(),
            30.heightBox,
            const Spacer(),
            developedBy.text.white.size(12).fontFamily(semibold).make(),
            credits.text.white.size(16).fontFamily(semibold).make(),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}
