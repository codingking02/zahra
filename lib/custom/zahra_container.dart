import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';

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

Widget getcontainer(BuildContext context, String text) {
  return Container(
    height: mediaqueryheight(
      0.2,
      context,
    ),
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color.fromRGBO(251, 251, 251, 1),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.08),
          offset: Offset(0, 4),
          blurRadius: 10,
          spreadRadius: 0,
        )
      ],
    ),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.cairo(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(30, 30, 30, 1),
        ),
      ),
    ),
  );
}
