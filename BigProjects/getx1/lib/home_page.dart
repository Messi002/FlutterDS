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
          ],
        ),
      ),
    );
  }
}
