import 'package:flutter/material.dart';
import 'package:zahra/view/drawerwidgets/homescreen_drawerwidget.dart';
import 'package:zahra/view/drawerwidgets/hospital_drawerwidget.dart';
import 'package:zahra/view/drawerwidgets/oldbadrcity_drawer.dart';
import 'package:zahra/view/drawerwidgets/train_station_drawer.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zahra',
      home: TrainStationDrawer(),
    ),
  );
}
