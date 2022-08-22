// ignore_for_file: prefer_const_constructors

import 'package:app5/store_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Views/add_follower_count.dart';
import 'Views/add_followers.dart';
import 'Views/store_status.dart';
import 'Views/update_store_name.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      home:const HomePage(),
    );
  }
}
