import 'package:app5/Controllers/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFollowerCount extends StatelessWidget {
  AddFollowerCount({Key? key}) : super(key: key);
  final storeController = Get.find<StoreController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(title: const Text("Add Follower Count")),
          floatingActionButton: FloatingActionButton(
        onPressed: () {
          storeController.updatefollowerCount();
        },
        child: const Icon(Icons.add),
      ),
      body: Container(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                      const Text(
                'You have add these many followers to your store',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28),
              ),
              const SizedBox(
                height: 40.0,
              ),
                Obx(
                () => Text(
                  'With Obs & Obx: ${storeController.followerCount.value.toString()}',
                  style: const TextStyle(fontSize: 28),
                ),
              ),
          ],
        ),
      ),),
    );
  }
}
