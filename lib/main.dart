import 'package:flutter/material.dart';
import 'package:zahra/view/drawerscreens/homescreen_drawerwidget.dart';
import 'package:zahra/view/drawerscreens/restaurants_drawer.dart';
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
