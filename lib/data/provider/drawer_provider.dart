import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  Widget? _selectedWidget;
  Widget? get selectedWidget => _selectedWidget;

  void setWidget(Widget? value) {
    _selectedWidget = value;
    notifyListeners();
  }
}
