import 'package:flutter/material.dart';
import 'package:zahra/view/screens/home_screen.dart';
import 'package:zahra/view/screens/medical_services.dart';
import 'package:zahra/view/screens/restaurants.dart';

class NavigationProvider with ChangeNotifier {
  // List of main screens corresponding to the BottomNavigationBar
  final List<Widget> _mainScreens = [
    const HomeScreen(),
    const MedicalServices(),
    const Restaurants(),
  ];

  // Stack of screens for navigation within the app
  final List<Widget> _screenStack = [const HomeScreen()];

  int _currentNavBarIndex = 0; // Index for the BottomNavigationBar
  int _screenIndex = 0; // Tracks the current screen in the stack

  // Getter for the BottomNavigationBar index
  int get currentNavBarIndex => _currentNavBarIndex;

  // Getter for the current screen (top of the stack)
  Widget get currentScreen => _screenStack[_screenIndex];

  // Select a new tab in the BottomNavigationBar
  void selectNavBarIndex(int index) {
    _currentNavBarIndex = index; // Update the index for BottomNavigationBar
    _screenStack.clear(); // Clear the stack if switching between main tabs
    _screenStack.add(
      _mainScreens[index],
    ); // Add the selected tab screen
    _screenIndex = 0; // Reset the screen stack index
    notifyListeners();
  }

  // Method to push a new screen on top of the stack
  void selectScreen(Widget screen) {
    _screenStack.add(screen); // Add the new screen to the stack
    _screenIndex = _screenStack.length - 1; // Update the screen index
    notifyListeners();
  }

  // Method to go back to the previous screen
  void goBack() {
    if (_screenStack.length > 1) {
      _screenStack.removeLast(); // Remove the last screen from the stack
      _screenIndex = _screenStack.length - 1; // Update the screen index
      notifyListeners();
    }
  }
}
