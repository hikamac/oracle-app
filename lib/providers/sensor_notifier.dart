
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorNotifier extends ChangeNotifier {
  double angle = 0.0;
  SensorNotifier() {
    accelerometerEvents.listen((event) {
      if (event.x > 2.0 || event.y > 2.0 || event.z > 2.0) {
        shake();
      }
    });
  }

  void shake() {
    angle = Random().nextDouble() * 0.2 - 0.1;
    notifyListeners();
  }
}
