import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/custom_widgets/bg_image_widget.dart';
import 'package:emart_app/custom_widgets/custom_elevated_button.dart';
import 'package:emart_app/custom_widgets/textfield_widget.dart';
import 'package:emart_app/view/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../../custom_widgets/applogo_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
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
              "Join the $appname".text.white.size(18).fontFamily(bold).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(name, hintName),
                  customTextField(email, emailHint),
                  customTextField(password, passwordHint),
                  customTextField(retypePassword, passwordHint),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgotPass.text.make())),
                  Row(
                    children: [Checkbox(
                        checkColor: whiteColor,
                        activeColor: redColor,
                        value: isCheck, onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                    }),
                      Expanded(
                        child: RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " I agree to the ", style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            ),
                            ),
                            TextSpan(
                              text: termAndCond, style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            ),
                            ),
                            TextSpan(
                              text: " & ", style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            ),
                            ),
                            TextSpan(
                              text: privacyPolicy, style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            ),
                            ),

                          ],
                        )),
                      ),
                    ],
                  ),
                  5.heightBox,
                  CustomElevatedButton(signup, () {}, isCheck == true? whiteColor : redColor, isCheck == true? redColor : lightGolden)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  5.heightBox,
                  RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveAcc, style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      ),
                      ),
                      TextSpan(
                        text: login, style: TextStyle(
                        fontFamily: bold,
                        color: redColor,
                      ),
                      ),
                    ],
                  )).onTap(() { Get.to(const LoginScreen());}),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 50)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    ));
  }
}
