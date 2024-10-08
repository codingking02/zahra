import 'package:flutter/material.dart';
import 'package:zahra/view/screens/home_screen.dart';

class NavigationProvider with ChangeNotifier {
  // This list will hold the stack of screens for each tab.
  final List<Widget> _screens = [
    const HomeScreen()
  ]; // Initialize with the first screen
  int _currentIndex = 1;

  Widget get currentScreen =>
      _screens.isNotEmpty ? _screens.last : const HomeScreen();
  int get currentIndex => _currentIndex;

  void selectScreen(Widget screen) {
    _screens.add(screen);
    _currentIndex++;
    notifyListeners();
  }

  void goBack() {
    if (_screens.length > 1) {
      _screens.removeLast();
      _currentIndex--;
      notifyListeners();
    }
  }
}
