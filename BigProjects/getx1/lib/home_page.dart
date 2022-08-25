// ignore_for_file: prefer_const_constructors

import 'package:app5/Controller/counter_timer.dart';
import 'package:app5/Controllers/theme_controller.dart';
import 'package:app5/utils/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var themeController = Get.find<ThemeController>();
  final CounterState counterstate = Get.put(CounterState());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count Down Timer Using Getx '),
            GetBuilder<CounterState>(builder: (cont) {
              return Text(
                cont.count.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
            ButtonWidget()
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeController = Get.find<ThemeController>();
    var textTheme = Theme.of(context).textTheme;
    return AppBar(
      title: Text("Timer", style: textTheme.headline1),
      backgroundColor: Colors.transparent,
      actions: [
        GetBuilder<ThemeController>(
            id: 1,
            init: ThemeController(),
            initState: (_) {},
            builder: (_) {
              return IconButton(
                  onPressed: () {
                    _.t
                  },
                  icon: icon);
            })
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
