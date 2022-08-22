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
      body: Column(
        children: <Widget>[
          Input(
            hintText: 'Enter Follower\s name...',
            controller: storeController.followerController,
          ),
          ElevatedButton.icon(
              onPressed: () {
                storeController.addNewFollower(
                    storeController.followerController.text.trim());
              },
              icon: Icon(Icons.person_add_alt_rounded),
              label: Text("Follower"))
        ],
      ),
    );
  }
}
