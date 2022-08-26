import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app5/State/products.dart';

class WishList extends StatelessWidget {
   WishList({Key? key}) : super(key: key);
  final product = Get.find<Products>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Wish List: ${product.items.length}')),
      ),
      body: ,
    );
  }
}
