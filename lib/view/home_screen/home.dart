import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
    Home({super.key});

  var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: controller.navBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
            items: controller.navBarItem,
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            selectedItemColor: redColor,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
      ),
    );
  }
}
