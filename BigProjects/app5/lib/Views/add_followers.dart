// ignore_for_file: unnecessary_string_escapes

import 'package:app5/Controllers/store_controller.dart';
import 'package:app5/Utils/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFollowers extends StatelessWidget {
  AddFollowers({Key? key}) : super(key: key);
  final storeController = Get.find<StoreController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Followers'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 56.0),
        child: Column(
        
                    storeController.addNewFollower(
                        storeController.followerController.text.trim());
                    Get.snackbar("Done",
                        "${storeController.followerController.text} added successfully",
                        showProgressIndicator: true);
                    storeController.followerController.clear();
                    Get.toNamed("/");
                  }
                },
                icon: const Icon(Icons.person_add_alt_rounded),
                label: const Text("Follower")),

                 Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: storeController.followerList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(storeController.followerList[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
