
import 'package:flutter/material.dart';
import 'package:oracle/models/developer.dart';
import 'package:oracle/providers/sensor_notifier.dart';
import 'package:provider/provider.dart';

class OracleContainer extends StatelessWidget {
  List<Developer> members;
  OracleContainer({super.key, required this.members});

  @override
  Widget build(BuildContext context) {
    return Consumer<SensorNotifier>(
      builder: (context, notifier, child) {
        return Transform.rotate(
          angle: notifier.angle,
          child: Image.asset("assets/images/omijikuji2.png"),
        );
      },
    );
  }
}
