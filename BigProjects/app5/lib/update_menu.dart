// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app5/Controllers/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Utils/input.dart';

class UpdateMenu extends StatelessWidget {
   UpdateMenu({Key? key}) : super(key: key);
  final storeController = Get.put(StoreController());

  @override
  Widget build(BuildContext context) {
    print("UpdateMenu screen building...");

    return Scaffold(
      appBar: AppBar(title: Text("Update Menu")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Input(
              hintText: "Name",
              controller: storeController.storeNameEditingController,
              onSubmit: (value) => print(value),
            ),
            SizedBox(height: 16),
            Input(
              hintText: "Color",
              onSubmit: (value) => print(value),
            ),
            SizedBox(height: 16),
            Input(
              hintText: "Location",
              onSubmit: (value) => print(value),
            ),
            SizedBox(height: 16),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () => {},
              color: Colors.deepOrange,
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Name"),
               ListTile(
                title: Text("Name"),
                trailing:  Obx( (){
                  return Text("${storeController.storeNameEditingController.text.trim()}");
                }),
               ),
               
                SizedBox(height: 16),
                Text("Color"),
                SizedBox(height: 16),
                Text("Location"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}