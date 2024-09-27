import 'package:flutter/material.dart';
import 'package:zahra/view/drawerwidgets/camera_darawer.dart';
import 'package:zahra/view/drawerwidgets/homescreen_drawerwidget.dart';
import 'package:zahra/view/drawerwidgets/learningservice_drawer.dart';
import 'package:zahra/view/drawerwidgets/medicalservices_drawerwidget.dart';
import 'package:zahra/view/drawerwidgets/publictranportation_drawer.dart';
import 'package:zahra/view/drawerwidgets/restaurants_drawer.dart';
import 'package:zahra/view/screens/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zahra',
      home: SplashScreen(),
    ),
  );
}
