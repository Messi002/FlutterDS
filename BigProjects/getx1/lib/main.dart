// ignore_for_file: prefer_const_constructors

import 'package:app5/Controllers/theme_controller.dart';
import 'package:app5/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:  MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.light,
      title: 'Demo',
      home: HomePage(),
    );
  }
}