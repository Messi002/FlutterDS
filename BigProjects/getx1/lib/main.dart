// ignore_for_file: prefer_const_constructors


import 'package:app5/View/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.bold,
          )
        ),
      ),
         title: 'Demo',
      home: HomePage(),
    );
  }
}
