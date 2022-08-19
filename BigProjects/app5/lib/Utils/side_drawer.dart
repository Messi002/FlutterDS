// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(child: Text(
              'GetX Store',
              textAlign: TextAlign.center,
              style: TextStyle(
                // color:
                //     Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
                fontSize: 24,
              ),
            ),),
            ListTile(
              title: Text(
                "Change Store Name",
                style: TextStyle(
                  fontSize: 18.0,
                  // color: Get.isDarkMode
                  //     ? AppColors.spaceCadet
                  //     : AppColors.spaceBlue,
                ),
              ),
              onTap: () => Get.offAndToNamed('/edit_name'),
            ),
              ListTile(
              title: Text(
                "Add followers",
                style: TextStyle(
                  fontSize: 18.0,
                  // color: Get.isDarkMode
                  //     ? AppColors.spaceCadet
                  //     : AppColors.spaceBlue,
                ),
              ),
              onTap: () => Get.offAndToNamed('/add_followers'),
            ),
              ListTile(
              title: Text(
                "Increment Followers",
                style: TextStyle(
                  fontSize: 18.0,
                  // color: Get.isDarkMode
                  //     ? AppColors.spaceCadet
                  //     : AppColors.spaceBlue,
                ),
              ),
              onTap: () => Get.offAndToNamed('/edit_follower_count'),
            ),
              ListTile(
              title: Text(
                "Toggle Store Status",
                style: TextStyle(
                  fontSize: 18.0,
                  // color: Get.isDarkMode
                  //     ? AppColors.spaceCadet
                  //     : AppColors.spaceBlue,
                ),
              ),
              onTap: () => Get.offAndToNamed('/toggle_status'),
            ),
            ListTile(
              title: Text(
                "Add Reviews",
                style: TextStyle(
                  fontSize: 18.0,
                  // color: Get.isDarkMode
                  //     ? AppColors.spaceCadet
                  //     : AppColors.spaceBlue,
                ),
              ),
              onTap: () => Get.offAndToNamed('/add_reviews'),
            ),
            
        ],
      ),
    );
  }
}
