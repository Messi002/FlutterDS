import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterState extends GetxController {
  var count = 15;
  late Timer _timer;

  void StartTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (count > 0) {
        count--;
        update();
      } else {
        _timer.cancel();
        update();
      }
    });
  }

  void pause() {
    _timer.cancel();
    update();
  }

  void reset() {
    _timer.cancel();
    count = 10;
  }
}
