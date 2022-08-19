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
  final reviewNameEditingController = TextEditingController();
  final reviewsEditingController = TextEditingController();


  static StoreController get to => Get.find();



  
  updateStoreName(String name) {
    storeName(name);
    //TODO: storeName.value = name;
  }

  updatefollowerCount() {
    followerCount(followerCount.value++);
  }

  updateStoreStatus(bool isOpen) {
    storeStatus(isOpen);
  }

    updateFollowerList(List<String> list) {
    followerList.assignAll(list);
  }

  addNewFollower(String name) {
    followerList.add(name);
  }

  void addReview(List<String> storeReviews) {
    reviews.add(storeReviews);
  }

  @override
  void dispose() {
    storeNameEditingController.dispose();
    reviewsEditingController.dispose();
    super.dispose();
  }

 

}
