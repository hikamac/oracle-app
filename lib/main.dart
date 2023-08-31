import 'package:flutter/material.dart';
import 'package:oracle/views/home.dart';
import 'package:provider/provider.dart';

import 'providers/sensor_notifier.dart';

void main() {
  runApp(
    Builder(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => SensorNotifier(context),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
