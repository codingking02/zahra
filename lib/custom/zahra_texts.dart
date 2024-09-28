import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget zahratexts(
  String text,
) {
  return Text(
    text,
    style: GoogleFonts.cairo(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: const Color.fromRGBO(30, 30, 30, 1),
    ),
  );
}

Widget zahraboldtexts(
  String text,
) {
  return Text(
    text,
    style: GoogleFonts.cairo(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: const Color(0xff1E1E1E),
    ),
  );
}

Widget zahratexts12px(
  String text,
) {
  return Text(
    text,
    style: GoogleFonts.cairo(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(
        30,
        30,
        30,
        0.7,
      ),
    ),
  );
}

Widget getnormaltexts(String text) {
  return Text(
    text,
    style: GoogleFonts.cairo(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(30, 30, 30, 1),
    ),
  );
}
