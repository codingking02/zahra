import 'package:flutter/material.dart';
import 'package:zahra/view/screens/splash_screen.dart';

import 'package:zahra/view/drawerwidgets/zahra_drawercontroller.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zahra',
      home: ZahraDrawerWidgetController(),
    ),
  );
}
