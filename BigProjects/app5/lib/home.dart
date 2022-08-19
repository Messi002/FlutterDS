import 'package:app5/Controllers/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<StoreController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MIRStore"),),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(child: Column(
          children: [
            
          ],
        )),
      ),
    );
  }
}
