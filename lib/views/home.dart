import 'package:flutter/material.dart';
import 'package:oracle/views/pages/sensor_test.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            const OracleContainer(),
          ],
        ),
      ),
    );
  }
}
