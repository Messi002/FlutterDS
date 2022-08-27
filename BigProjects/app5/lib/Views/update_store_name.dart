import 'package:app5/Utils/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/store_controller.dart';

class UpdateStoreName extends StatelessWidget {
  UpdateStoreName({Key? key}) : super(key: key);
  final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Update Store Name")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
        
                  storeController.updateStoreName(
                      storeController.storeNameEditingController.text.trim());
                 Get.snackbar("Successful update!", "Done!",
                      duration: Duration(seconds: 5),
                      snackPosition: SnackPosition.BOTTOM,
                      showProgressIndicator: true);
                  Get.offNamed('/');
                },
                icon: Icon(Icons.app_registration),
                label: Text('Update'))
          ],
        ),
      ),
    );
  }
}
