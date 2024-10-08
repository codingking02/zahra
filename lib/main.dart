import 'package:flutter/material.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/screens/home_screen.dart';
import 'package:zahra/view/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NavigationProvider(),
          child: const HomeScreen(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Zahra',
        home: SplashScreen(),
      ),
    ),
  );
}
