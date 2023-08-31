import 'package:flutter/material.dart';
import 'package:oracle/models/developer.dart';
import 'package:oracle/service/developer_service.dart';
import 'package:oracle/views/pages/sensor_test.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Developer> members = DeveloperService.getMembers();
    return Scaffold(
      body: Center(
        child: OracleContainer(members: members),
      ),
    );
  }
}
