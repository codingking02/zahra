import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/transportation/agiadcompany.dart';
import 'package:zahra/view/medical/badrhospital.dart';
import 'package:zahra/view/services/camras.dart';
import 'package:zahra/view/food/elasemagrills.dart';
import 'package:zahra/view/food/grills.dart';
import 'package:zahra/view/home/home_screen.dart';
import 'package:zahra/view/shop/homeshooping.dart';
import 'package:zahra/view/medical/hospitals.dart';
import 'package:zahra/view/shop/hypermarket.dart';
import 'package:zahra/view/education/learning_services.dart';
import 'package:zahra/view/medical/medical_services.dart';
import 'package:zahra/view/services/oldbadrcity.dart';
import 'package:zahra/view/services/public_service.dart';
import 'package:zahra/view/transportation/public_transportation.dart';
import 'package:zahra/view/food/restaurants.dart';
import 'package:zahra/view/education/school.dart';
import 'package:zahra/view/transportation/train_station.dart';
import 'package:zahra/view/transportation/transportation.dart';
import 'package:zahra/view/services/zahratech.dart';

import '../view/education/moustafakamel.dart';

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
