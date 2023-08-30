import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/custom_widgets/bg_image_widget.dart';
import 'package:emart_app/view/categories_screens/categories_details_screen.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgImageWidget(Scaffold(
      appBar: AppBar(
        title: categories.text
            .fontFamily(bold)
            .white
            .make(),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 200),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  categoriesImagesList[index],
                  height: 140,
                  width: 200,
                  fit: BoxFit.fitWidth,
                ),
                15.heightBox,
                categoriesTitlesList[index].text.make(),
              ],
            ).box.white.rounded
                .clip(Clip.antiAlias)
                .outerShadowSm
                .make()
                .onTap(() {
              Get.to(
                  CategoriesDetailScreen(title: categoriesTitlesList[index]));
            });
          },
        ),
      ),
    ));
  }
}
