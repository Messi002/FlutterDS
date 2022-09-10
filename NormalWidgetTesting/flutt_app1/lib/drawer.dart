import 'package:flutter/material.dart';
import 'package:flut_app/Screen1/album_get.dart';
import 'package:flut_app/myhome_page.dart';
import 'Screen1/getx_post.dart';
import 'Screen1/image_fetching.dart';


import 'package:get/get.dart';



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
           title: Text('GextDrawer'),
           onTap: () => Get.offAndToNamed(GetxPostPage.id),
          ),
           ListTile(
           title: Text('Album Fetch'),
           onTap: () => Get.offAndToNamed(AlbumPost.id),
          ),
        ],
      ),
    );
  }
}
