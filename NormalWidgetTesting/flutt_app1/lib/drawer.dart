import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("Network Request App")),
          ListTile(
           title: Text('Text1'),
           
          ),
        ],
      ),
    );
  }
}
