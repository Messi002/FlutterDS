// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


import 'package:flut_app/Screen1/album_get.dart';
import 'package:flut_app/myhome_page.dart';
import 'package:get/get.dart';

import 'Screen1/getx_post.dart';
import 'Screen1/image_fetching.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyHomePage.id,
      getPages: [
        GetPage(name: MyHomePage.id, page: () => MyHomePage()),
        GetPage(name: ImagePage.id, page: () => ImagePage()),
        GetPage(name: GetxPostPage.id, page: () => GetxPostPage()),
        GetPage(name: AlbumPostPage.id, page: () => AlbumPostPage()),
      ],
    );
  }
}


