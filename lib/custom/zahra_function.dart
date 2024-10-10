import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/agiadcompany.dart';
import 'package:zahra/view/badrhospital.dart';
import 'package:zahra/view/camras.dart';
import 'package:zahra/view/elasemagrills.dart';
import 'package:zahra/view/grills.dart';
import 'package:zahra/view/home_screen.dart';
import 'package:zahra/view/homeshooping.dart';
import 'package:zahra/view/hospitals.dart';
import 'package:zahra/view/hypermarket.dart';
import 'package:zahra/view/learning_services.dart';
import 'package:zahra/view/medical_services.dart';
import 'package:zahra/view/oldbadrcity.dart';
import 'package:zahra/view/public_service.dart';
import 'package:zahra/view/public_transportation.dart';
import 'package:zahra/view/restaurants.dart';
import 'package:zahra/view/school.dart';
import 'package:zahra/view/train_station.dart';
import 'package:zahra/view/transportation.dart';
import 'package:zahra/view/zahratech.dart';

import '../view/moustafakamel.dart';

bool ismedical(BuildContext context) {
  final provider = Provider.of<NavigationProvider>(
    context,
    listen: false,
  );
  bool isMedicalServices = provider.currentScreen.runtimeType ==
          const HomeScreen().runtimeType ||
      provider.currentScreen.runtimeType == const Hospitals().runtimeType ||
      provider.currentScreen.runtimeType ==
          const MedicalServices().runtimeType ||
      provider.currentScreen.runtimeType == const Badrhospital().runtimeType;
  return isMedicalServices;
}

bool isrestaurant(BuildContext context) {
  final provider = Provider.of<NavigationProvider>(
    context,
    listen: false,
  );
  bool isrestaurants = provider.currentScreen.runtimeType ==
          const Restaurants().runtimeType ||
      provider.currentScreen.runtimeType == const Grills().runtimeType ||
      provider.currentScreen.runtimeType == const Elasemagrills().runtimeType;
  return isrestaurants;
}

bool isshop(BuildContext context) {
  final provider = Provider.of<NavigationProvider>(
    context,
    listen: false,
  );
  bool isshopping = provider.currentScreen.runtimeType ==
          const Hypermarket().runtimeType ||
      provider.currentScreen.runtimeType == const Homeshooping().runtimeType;
  return isshopping;
}

bool iseducations(BuildContext context) {
  final provider = Provider.of<NavigationProvider>(
    context,
    listen: false,
  );
  bool iseducation =
      provider.currentScreen.runtimeType == const Moustafakamel().runtimeType ||
          provider.currentScreen.runtimeType == const School().runtimeType ||
          provider.currentScreen.runtimeType ==
              const LearningServices().runtimeType;
  return iseducation;
}

bool istransports(BuildContext context) {
  final provider = Provider.of<NavigationProvider>(
    context,
    listen: false,
  );
  bool istransport = provider.currentScreen.runtimeType ==
          const Transportation().runtimeType ||
      provider.currentScreen.runtimeType == const TrainStation().runtimeType ||
      provider.currentScreen.runtimeType ==
          const PublicTransportation().runtimeType ||
      provider.currentScreen.runtimeType == const Agiadcompany().runtimeType;
  return istransport;
}

bool isotherservice(BuildContext context) {
  final provider = Provider.of<NavigationProvider>(
    context,
    listen: false,
  );
  bool isotherservices = provider.currentScreen.runtimeType ==
          const Cameras().runtimeType ||
      provider.currentScreen.runtimeType == const PublicService().runtimeType ||
      provider.currentScreen.runtimeType == const Zahratech().runtimeType ||
      provider.currentScreen.runtimeType == const Oldbadrcity().runtimeType;
  return isotherservices;
}
