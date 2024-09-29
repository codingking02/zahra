import 'package:flutter/material.dart';
import 'package:zahra/view/drawerwidgets/agiadcompany_drawer.dart';
import 'package:zahra/view/drawerwidgets/oldbadrcity_drawer.dart';
import 'package:zahra/view/screens/agiadcompany.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zahra',
      home: AgiadcompanyDrawer(),
    ),
  );
}
