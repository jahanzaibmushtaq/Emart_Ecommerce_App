import 'package:spark_shop/consts/consts.dart';
import 'package:spark_shop/consts/lists.dart';
import 'package:spark_shop/view/account_profile_screens/components/detail_cart_button.dart';
import 'package:flutter/material.dart';

import '../../consts/images.dart';
import '../../custom_widgets/bg_image_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgImageWidget(
      Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //edit profile icon
              const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  )),

              //user detail section
              Row(
                children: [
                  Image.asset(imgProfile2, width: 80, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.fontFamily(semibold).white.make(),
                        "dummy@example.com".text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white)),
                    onPressed: () {},
                    child: logout.text.white.fontFamily(semibold).make(),
                  ),
                ],
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailCartButton(
                      count: "00",
                      title: "Your Cart",
                      width: (context.screenWidth / 3.4)),
                  detailCartButton(
                      count: "32",
                      title: "Your Wishlist",
                      width: (context.screenWidth / 3.4)),
                  detailCartButton(
                      count: "777",
                      title: "Your Orders",
                      width: (context.screenWidth / 3.4)),
                ],
              ),
              //buttons section
              ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.asset(
                            profileIconsList[index],
                            width: 22,
                          ),
                          title: profileButtonsList[index]
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: lightGrey,
                        );
                      },
                      itemCount: profileButtonsList.length)
                  .box
                  .rounded
                  .white
                  .margin(const EdgeInsets.all(12))
                  .shadowSm
                  .padding(const EdgeInsets.symmetric(horizontal: 16))
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
