import 'package:spark_shop/custom_widgets/bg_image_widget.dart';
import 'package:spark_shop/view/categories_screens/items_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:spark_shop/consts/consts.dart';

class CategoriesDetailScreen extends StatelessWidget {
  const CategoriesDetailScreen({super.key, required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return bgImageWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(semibold).white.make(),
        shadowColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                  children: List.generate(
                6,
                (index) => "Baby Clothing"
                    .text
                    .fontFamily(semibold)
                    .color(darkFontGrey)
                    .size(12)
                    .makeCentered()
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(12))
                    .size(120, 60)
                    .margin(const EdgeInsets.symmetric(horizontal: 4))
                    .make(),
              )),
            ),
            20.heightBox,
            Expanded(
                child: Container(
              color: Colors.white,
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP1,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        10.heightBox,
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        6.heightBox,
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
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .padding(const EdgeInsets.all(12))
                        .roundedSM
                        .outerShadow
                        .make()
                        .onTap(() {
                      Get.to(
                          () => const ItemsDetailScreen(title: "Dummy Title"));
                    });
                  }),
            ))
          ],
        ),
      ),
    ));
  }
}
