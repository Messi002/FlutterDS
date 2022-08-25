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
      child:,
    );
  }
}
