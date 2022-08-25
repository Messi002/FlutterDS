import 'package:app5/counter_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterState counterstate = Get.put(CounterState());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Count Down Timer Using Getx '),
            GetBuilder<CounterState>(builder: (cont) {
             return Text(cont.count.toString());
            }),
            ElevatedButton(
                onPressed: () {
                  counterstate.StartTimer();
                },
                child: Text('Start Timer'))
          ],
        ),
      ),
    );
  }
}
