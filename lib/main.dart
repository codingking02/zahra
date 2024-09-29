import 'package:flutter/material.dart';
import 'package:zahra/view/drawerwidgets/homescreen_drawerwidget.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zahra',
      home: HomescreenDrawerwidget(),
    ),
  );
}
