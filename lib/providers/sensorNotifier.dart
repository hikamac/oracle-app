import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorNotifier extends ChangeNotifier {
  SensorNotifier() {
    accelerometerEvents.listen((event) {
      if (event.x > 2.0 || event.y > 2.0 || event.z > 2.0) {
        // TODO: action
      }
    });
  }
}
