import 'package:app5/Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(),
    getPages: [
      GetPage(name: '/second', page: () => Pages()),
      GetPage(name: '/', page: () => MyHomePage()),
    ],
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text('Clicks: ${c.count}'))),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () => {c.increment()},
              child: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () => {c.decrement()},
              child: const Icon(Icons.remove),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'btn3',
                onPressed: () {
                  Get.toNamed('/second');
                },
                child: const Icon(Icons.arrow_forward_ios)),
          ),
        ],
      ),
    );
  }
}

class Pages extends StatelessWidget {
  Pages({Key? key}) : super(key: key);
  final Controller c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yes!'),),
      body: Center(
        // ignore: prefer_const_constructors
        child: Text('${c.count}',
            style: TextStyle(
              fontSize: 30,
            )),
      ),
    );
  }
}
