import 'package:flutter/material.dart';
import 'package:spark_shop/consts/consts.dart';

import '../../consts/lists.dart';
import '../../custom_widgets/custom_elevated_button.dart';

class ItemsDetailScreen extends StatelessWidget {
  const ItemsDetailScreen({super.key, required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: darkFontGrey,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                        itemCount: slider1.length,
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 300,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slider1[index],
                            fit: BoxFit.cover,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    20.heightBox,
                    title!.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,
                    //rating
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),

                    10.heightBox,

                    "\$30,000"
                        .text
                        .fontFamily(bold)
                        .size(18)
                        .color(redColor)
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller"
                                  .text
                                  .color(darkFontGrey)
                                  .fontFamily(semibold)
                                  .make(),
                              5.heightBox,
                              "In House Brands"
                                  .text
                                  .color(redColor)
                                  .fontFamily(semibold)
                                  .size(18)
                                  .make(),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        ),
                      ],
                    )
                        .box
                        .height(60)
                        .color(textfieldGrey)
                        .padding(const EdgeInsets.symmetric(horizontal: 16))
                        .make(),

                    20.heightBox,

                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: List.generate(
                                  3,
                                  (index) => VxBox()
                                      .size(40, 40)
                                      .roundedFull
                                      .color(Vx.randomPrimaryColor)
                                      .margin(const EdgeInsets.symmetric(
                                          horizontal: 4))
                                      .make()),
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),

                        10.heightBox,
                        //quantity row
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child:
                                  "Quantity: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: lightGrey,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove)),
                                ),
                                8.widthBox,
                                "0"
                                    .text
                                    .size(16)
                                    .color(darkFontGrey)
                                    .fontFamily(bold)
                                    .make(),
                                8.widthBox,
                                CircleAvatar(
                                  backgroundColor: lightGrey,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add)),
                                ),
                                10.widthBox,
                                "(0 Available)"
                                    .text
                                    .size(16)
                                    .color(textfieldGrey)
                                    .fontFamily(bold)
                                    .make(),
                              ],
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                        10.heightBox,
                        //total row

                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: [
                                "\$0.00"
                                    .text
                                    .size(16)
                                    .color(redColor)
                                    .fontFamily(bold)
                                    .make(),
                              ],
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                      ],
                    ).box.shadowSm.white.make(),
                    10.heightBox,
                    //description
                    "Description"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    8.heightBox,
                    "this is the dummy data of the dummy product. Actual data will be added soon......"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    10.heightBox,
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                          itemsDetailButtonList.length,
                          (index) => ListTile(
                                title: itemsDetailButtonList[index]
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .make(),
                                trailing: const Icon(Icons.arrow_forward),
                              )),
                    ).box.white.rounded.make(),

                    10.heightBox,

                    //products you may like
                    productsYouAlsoLike.text
                        .fontFamily(bold)
                        .size(16)
                        .color(redColor)
                        .make(),
                    10.heightBox,
                    //copied from home screen
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          6,
                          (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP1,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              10.heightBox,
                              "Laptop 4GB/64GB"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                              10.heightBox,
                              "\$600"
                                  .text
                                  .fontFamily(bold)
                                  .color(redColor)
                                  .size(16)
                                  .make(),
                            ],
                          )
                              .box
                              .white
                              .rounded
                              .padding(const EdgeInsets.all(8))
                              .margin(const EdgeInsets.symmetric(horizontal: 4))
                              .make(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: CustomElevatedButton(
                  "Add to cart", () {}, whiteColor, redColor)),
        ],
      ),
    );
  }
}
