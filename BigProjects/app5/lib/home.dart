// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app5/Controllers/store_controller.dart';
import 'package:app5/Utils/main_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/theme_controller.dart';
import 'Utils/side_drawer.dart';
import 'app_theme.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());
  final controller = Get.put(StoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text("${controller.storeName}");
        }),
        actions: [
          IconButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  themeController.changeTheme(Themes.lightTheme);
                  themeController.saveTheme(false);
                } else {
                  themeController.changeTheme(Themes.darkTheme);
                  themeController.saveTheme(true);
                }
              },
              icon: Get.isDarkMode
                  ? Icon(Icons.light_mode_outlined)
                  : Icon(Icons.dark_mode_outlined))
        ],
      ),
      drawer: SideDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("StoreName:"),
                  Obx(() {
                    return Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        controller.storeName.value.toString(),
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    );
                  }),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Follower Couunt:"),
                  Obx(() {
                    return Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        controller.followerCount.value.toString(),
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    );
                  }),
                ],
              ),
              const SizedBox(height: 20.0),
              GetX<StoreController>(
                builder: (sController) {
                  return Text(
                    sController.storeStatus.value ? 'Open' : 'Closed',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: sController.storeStatus.value
                            ? Colors.green.shade700
                            : Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text("Follower Name:"),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.followerList.length,
                  itemBuilder: (context, index) {
                    return Text(
                      controller.followerList[index].toString(),
                      style: const TextStyle(fontSize: 16),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
