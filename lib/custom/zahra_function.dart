import 'package:flutter/material.dart';
import 'package:zahra/view/screens/agiadcompany.dart';
import 'package:zahra/view/screens/badrhospital.dart';
import 'package:zahra/view/screens/camras.dart';
import 'package:zahra/view/screens/elasemagrills.dart';
import 'package:zahra/view/screens/grills.dart';
import 'package:zahra/view/screens/home_screen.dart';
import 'package:zahra/view/screens/homeshooping.dart';
import 'package:zahra/view/screens/hospitals.dart';
import 'package:zahra/view/screens/hypermarket.dart';
import 'package:zahra/view/screens/learning_services.dart';
import 'package:zahra/view/screens/medical_services.dart';
import 'package:zahra/view/screens/oldbadrcity.dart';
import 'package:zahra/view/screens/public_service.dart';
import 'package:zahra/view/screens/public_transportation.dart';
import 'package:zahra/view/screens/restaurants.dart';
import 'package:zahra/view/screens/school.dart';
import 'package:zahra/view/screens/train_station.dart';
import 'package:zahra/view/screens/transportation.dart';
import 'package:zahra/view/screens/zahratech.dart';

import '../view/screens/moustafakamel.dart';

bool ismedical(Widget selectedWidget) {
  bool isMedicalServices =
      selectedWidget.runtimeType == const HomeScreen().runtimeType ||
          selectedWidget.runtimeType == const Hospitals().runtimeType ||
          selectedWidget.runtimeType == const MedicalServices().runtimeType ||
          selectedWidget.runtimeType == const Badrhospital().runtimeType;
  return isMedicalServices;
}

bool isrestaurant(Widget selectedWidget) {
  bool isrestaurants =
      selectedWidget.runtimeType == const Restaurants().runtimeType ||
          selectedWidget.runtimeType == const Grills().runtimeType ||
          selectedWidget.runtimeType == const Elasemagrills().runtimeType;
  return isrestaurants;
}

bool isshop(Widget selectedWidget) {
  bool isshopping =
      selectedWidget.runtimeType == const Hypermarket().runtimeType ||
          selectedWidget.runtimeType == const Homeshooping().runtimeType;
  return isshopping;
}

bool iseducations(Widget selectedWidget) {
  bool iseducation =
      selectedWidget.runtimeType == const Moustafakamel().runtimeType ||
          selectedWidget.runtimeType == const School().runtimeType ||
          selectedWidget.runtimeType == const LearningServices().runtimeType;
  return iseducation;
}

bool istransports(Widget selectedWidget) {
  bool istransport = selectedWidget.runtimeType ==
          const Transportation().runtimeType ||
      selectedWidget.runtimeType == const TrainStation().runtimeType ||
      selectedWidget.runtimeType == const PublicTransportation().runtimeType ||
      selectedWidget.runtimeType == const Agiadcompany().runtimeType;
  return istransport;
}

bool isotherservice(Widget selectedWidget) {
  bool isotherservices =
      selectedWidget.runtimeType == const Cameras().runtimeType ||
          selectedWidget.runtimeType == const PublicService().runtimeType ||
          selectedWidget.runtimeType == const Zahratech().runtimeType ||
          selectedWidget.runtimeType == const Oldbadrcity().runtimeType;
  return isotherservices;
}
