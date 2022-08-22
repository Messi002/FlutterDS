// ignore_for_file: prefer_const_constructors

import 'package:app5/Controllers/theme_controller.dart';
import 'package:app5/store_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Views/add_follower_count.dart';
import 'Views/add_followers.dart';
import 'Views/store_status.dart';
import 'Views/update_store_name.dart';
import 'app_theme.dart';
import 'home.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
      initialRoute: '/',
      initialBinding: StoreBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Demo',
       getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(name: '/edit_name', page: () => UpdateStoreName()),
        GetPage(name: '/add_followers', page: () => AddFollowers()),
        GetPage(name: '/toggle_status', page: () => StoreStatus()),
        GetPage(name: '/edit_follower_count', page: () => AddFollowerCount()),
        // GetPage(name: '/add_reviews', page: () => AddReviews()),
        // GetPage(name: '/update_menu', page: () => const UpdateMenu()),
      ],
      home: HomePage(),
    );
  }
}
