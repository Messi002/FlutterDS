import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterState extends GetxController {
  int count = 30;
  final count1 = 15.obs;
  late Timer _timer;

  void StartTimerObx() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (count1 > 0) {
        count1(count1.value-1);
      } 
      else {
        _timer.cancel();
      }
    });
  }

  void PauseObx() {
    _timer.cancel();
  }

  void StartTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (count > 0) {
        count--;
        update();
      }
    });
  }

  void pause() {
    _timer.cancel();
    update();
  }

  void resume() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (count > 0) {
        count--;
        update();
      }
    });
  }

  void reset() {
    _timer.cancel();
    count = 30;
    update();
  }
}
