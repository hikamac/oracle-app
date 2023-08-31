import 'package:flutter/material.dart';
import 'package:oracle/views/pages/sensor_test.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: OracleContainer(),
      ),
    );
  }
}
