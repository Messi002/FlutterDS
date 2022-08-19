// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app5/Controllers/store_controller.dart';
import 'package:app5/Utils/main_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<StoreController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MIRStore"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            MainCard(title: 'Store Info'),
            Obx(() {
              return Flexible(child: Text(
                controller.storeName.value.toString(),
                
              ));
            }),
          ],
        )),
      ),
    );
  }
}
