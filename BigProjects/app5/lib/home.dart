// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
              MainCard(
                title: 'Store Info',
                body: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("StoreName:"),
                        Obx(() {
                          return Flexible(
                            fit: FlexFit.tight,
                            child: Text(
                              controller.storeName.value.toString(),
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          );
                        }),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Follower Couunt:"),
                        Obx(() {
                          return Flexible(
                            fit: FlexFit.tight,
                            child: Text(
                              controller.followerCount.value.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          );
                        }),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    GetX<StoreController>(
                      builder: (sController) {
                        return Flexible(
                          child: Text( 
                            sController.storeStatus.value ? 'Open' : 'Closed',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: sController.storeStatus.value
                                      ? Colors.green.shade700
                                      : Colors.red,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
