import 'package:flutter/material.dart';
import 'package:zahra/view/login.dart';
import 'package:zahra/view/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zahra',
      home: SplashSceen(),
    ),
  );
}
