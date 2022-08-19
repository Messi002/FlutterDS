import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreController extends GetxController {
  final storeName = 'MIRShop'.obs;
  final followerCount = 0.obs;
  final storeStatus = true.obs;
  final followerList = [].obs;
  final reviews = [].obs;

  final storeNameEditingController = TextEditingController();
  final followerController = TextEditingController();
  final reeviewNameEditingController = TextEditingController();
  final reviewEditingController = TextEditingController();

  updateStoreName(String name) {
    storeName(name);
  }

  updatefollowerCount() {
    followerCount(followerCount.value++);
  }
    updateStoreStatus(String name) {
    storeName(name);
  }  updateStoreName(String name) {
    storeName(name);
  }
}
