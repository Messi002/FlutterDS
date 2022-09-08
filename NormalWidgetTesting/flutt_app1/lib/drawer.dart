import 'package:flut_app/myhome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screen1/getx_post.dart';
import 'Screen1/image_fetching.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("Network Request App")),
          ListTile(
           title: Text('Fetch Images'),
           onTap: () => Get.offAndToNamed(ImagePage.id),
          ),
           ListTile(
           title: Text('Fetch Images'),
           onTap: () => Get.offAndToNamed(GetxPostPage.id),
          ),
        ],
      ),
    );
  }
}
