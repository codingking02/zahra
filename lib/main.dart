import 'package:flutter/material.dart';
import 'package:zahra/view/drawerwidgets/badrhospital_drawer.dart';
import 'package:zahra/view/drawerwidgets/train_station_drawer.dart';
import 'package:zahra/view/screens/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zahra',
      home: TrainStationDrawer(),
    ),
  );
}
