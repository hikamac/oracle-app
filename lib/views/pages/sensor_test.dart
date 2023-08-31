import 'package:flutter/material.dart';
import 'package:oracle/providers/sensor_notifier.dart';
import 'package:provider/provider.dart';

class OracleContainer extends StatelessWidget {
  const OracleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SensorNotifier>(
      builder: (context, notifier, child) {
        return Transform.rotate(
          angle: notifier.angle,
          child: Image.asset("assets/images/omikuji2.png"),
        );
      },
    );
  }
}
