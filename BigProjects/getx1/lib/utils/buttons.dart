// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app5/Controller/theme_controller.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({Key? key, this.onTap}) : super(key: key);
  final VoidCallback? onTap;
  final ThemeController _themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GetBuilder(
          id: 1,
          builder: (ctx) {
            return Container(
              width: Get.width /5,
              height: Get.height / 14,
              decoration: BoxDecoration(
                color: _themeController.isDarkMode ? const Color.fromARGB(255, 21, 21, 21) : Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(_themeController.isDarkMode? 'Switch to Light Mode' : 'Switch to Dark Mode', style: TextStyle(color: Colors.blue,fontSize: 19)),
            );
          }),
    );
  }
}
