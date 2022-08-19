import 'package:app5/store_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: StoreBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home:const HomePage(),
    );
  }
}
