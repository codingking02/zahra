import 'package:flutter/material.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/error/custom_error_widget.dart';
import 'package:zahra/view/home/home_screen.dart';
import 'package:zahra/view/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  FlutterError.onError = ErrorHandler.handleFlutterError;
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
