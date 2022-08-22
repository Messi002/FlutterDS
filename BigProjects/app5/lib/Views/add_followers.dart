import 'package:app5/Controllers/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFollowers extends StatelessWidget {
   AddFollowers({Key? key}) : super(key: key);
  final storeController = Get.find<StoreController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App,
    );
  }
}
