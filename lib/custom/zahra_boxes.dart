import 'package:flutter/material.dart';

mediaquerywidth(double number, BuildContext context) {
  return MediaQuery.of(context).size.width * number;
}

mediaqueryheight(double number, BuildContext context) {
  return MediaQuery.of(context).size.height * number;
}
