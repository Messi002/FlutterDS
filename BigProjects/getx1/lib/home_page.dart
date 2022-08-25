// ignore_for_file: prefer_const_constructors

import 'package:app5/Controller/theme_controller.dart';
import 'package:app5/Controller/counter_timer.dart';
import 'package:app5/utils/buttons.dart';
import 'package:app5/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterState counterstate = Get.put(CounterState());
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: MyAppBar(),
      drawer: Drawer(
        child: ListTile(
          title: Text(
            "Change App Theme Mode",
            style: TextStyle(
              fontSize: 18.0,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          trailing: IconButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  themeController.changeTheme(MyThemes.lightTheme);
                  themeController.saveTheme(false);
                } else {
                  themeController.changeTheme(MyThemes.darkTheme);
                  themeController.saveTheme(true);
                }
                print('drawer button pressed');
              },
              icon: Get.isDarkMode
                  ? Icon(Icons.light_mode_outlined)
                  : Icon(Icons.dark_mode_outlined)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Count Down Timer Using Getx ', style: TextStyle(fontSize: 20)),
          GetBuilder<CounterState>(builder: (cont) {
            return Text(cont.count.toString(), style: TextStyle(fontSize: 20));
          }),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                counterstate.StartTimer();
              },
              child: Text('Start Timer')),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                counterstate.resume();
              },
              child: Text('Resume Timer')),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                counterstate.pause();
              },
              child: Text('Pause Timer')),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                counterstate.reset();
              },
              child: Text('Reset Timer')),
          SizedBox(height: 15),
          Obx(() {
            return Text(counterstate.count1.value.toString(),
                style: textTheme.headline2);
          }),
          ElevatedButton(
              onPressed: () {
                counterstate.StartTimerObx();
              },
              child: Text('Start Timer with Obx')),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                counterstate.PauseObx();
              },
              child: Text('Pause Timer with Obx')),
          SizedBox(height: 15),
          // ButtonWidget()
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  MyAppBar({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return AppBar(
      title: Text("Timer", style: TextStyle(fontSize: 20)),
      systemOverlayStyle: Get.isDarkMode ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      actions: [
        IconButton(
            onPressed: () {
              if (Get.isDarkMode) {
                themeController.changeTheme(MyThemes.lightTheme);
                themeController.saveTheme(false);
              } else {
                themeController.changeTheme(MyThemes.darkTheme);
                themeController.saveTheme(true);
              }
            },
            icon: Get.isDarkMode
                ? Icon(Icons.light_mode_outlined)
                : Icon(Icons.dark_mode_outlined)
            // color: iconTheme.color,
            // size: iconTheme.size,
            )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
