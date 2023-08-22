import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/social_icons_logo_list.dart';
import 'package:emart_app/custom_widgets/applogo_widget.dart';
import 'package:emart_app/custom_widgets/custom_elevated_button.dart';
import 'package:emart_app/custom_widgets/textfield_widget.dart';
import 'package:emart_app/view/auth_screens/signup_screen.dart';
import 'package:emart_app/view/home_screen/home.dart';
import 'package:flutter/material.dart';

import '../../custom_widgets/bg_image_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgImageWidget(Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Log in to $appname".text.white.size(18).fontFamily(bold).make(),
              18.heightBox,
              Column(
                children: [
                  customTextField(email, emailHint),
                  customTextField(password, passwordHint),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgotPass.text.make())),
                  5.heightBox,
                  CustomElevatedButton(login, (){ Get.to(Home());}, whiteColor, redColor).box.width(context.screenWidth-50).make(),
                  8.heightBox,
                  createNewAcc.text.color(fontGrey).make(),
                  8.heightBox,
                  CustomElevatedButton(signup, (){Get.to(SignUpScreen());}, redColor, lightGolden).box.width(context.screenWidth-50).make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  8.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: lightGrey,
                        child: Image.asset(socialIconList[index],width: 35,),
                      ),
                    )),
                  ),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 50).shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    ));
  }
}
