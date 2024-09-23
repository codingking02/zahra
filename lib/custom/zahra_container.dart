import 'package:flutter/material.dart';

Widget zahraContainer({
  required Widget mychild,
}) {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 10,
          spreadRadius: 0,
          offset: Offset(0, -4),
        ),
      ],
      color: Color.fromRGBO(249, 243, 228, 1),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          30,
        ),
      ),
    ),
    child: mychild,
  );
}
