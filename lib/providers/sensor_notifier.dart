import 'dart:math';

import 'package:flutter/material.dart';
import 'package:oracle/components/common_dialog.dart';
import 'package:oracle/models/developer.dart';
import 'package:sensors_plus/sensors_plus.dart';

import '../constants/strings.dart';
import '../service/developer_service.dart';

class SensorNotifier extends ChangeNotifier {
  double angle = 0.0;
  BuildContext context;
  List<Developer> members = DeveloperService.getMembers();

  SensorNotifier(this.context) {
    accelerometerEvents.listen((event) {
      if (event.x > 2.0 || event.y > 2.0 || event.z > 2.0) {
        shake();
        Developer? developer = pickUpMember();
        _showModal(developer);
      }
    });
  }

  void shake() {
    angle = Random().nextDouble() * 0.2 - 0.1;
    notifyListeners();
  }

  Developer? pickUpMember() {
    if (members.isEmpty) {
      return null;
    } else {
      return members.removeAt(Random().nextInt(members.length));
    }
  }

  void _showModal(Developer? developer) {
    final String dialogContent =
        developer != null ? developer.name : Strings.end;
    showDialog(
      context: context,
      builder: (context) {
        return CommonDialog(title: Strings.dialogTitle, content: dialogContent);
      },
    );
  }
}
