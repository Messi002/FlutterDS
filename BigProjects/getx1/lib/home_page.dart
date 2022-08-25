// ignore_for_file: prefer_const_constructors

import 'package:app5/Controller/theme_controller.dart';
import 'package:app5/Controller/counter_timer.dart';
import 'package:app5/utils/buttons.dart';
import 'package:app5/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterState counterstate = Get.put(CounterState());
  
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Count Down Timer Using Getx ',style: textTheme.headline1),
          GetBuilder<CounterState>(builder: (cont) {
            return Text(
              cont.count.toString(),
              style: textTheme.headline1
            );
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
            return Text(
              counterstate.count1.value.toString(),
              style: textTheme.headline1
            );
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
      title: Text("Timer", style: textTheme.headline1),
      backgroundColor: Colors.transparent,
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
            icon: Icon(
              Get.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              // color: iconTheme.color,
              // size: iconTheme.size,
            ))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
