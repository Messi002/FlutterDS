import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app5/State/products.dart';
import 'package:app5/View/wish_list_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final Products product = Get.put(Products());
  var textTheme = Theme.of(context).textTheme;
  @override
  Widget build(BuildContext context) {
  var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('MIR-Shop', style: textTheme.bodyText1,)),
    );
  }
}
