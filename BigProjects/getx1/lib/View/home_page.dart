import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app5/State/products.dart';
import 'package:app5/View/wish_list_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final Products product = Get.put(Products());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MIR-Shop',)),
      body: Column(
        children: [
          const SizedBox(height: 20),
          InkWell(
            child: Container(
              width: 300,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
