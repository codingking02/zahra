import 'package:flutter/material.dart';
import 'package:zahra/widgets/zahra_colors.dart';

Widget zahraButton(
  BuildContext context,
  Widget screen,
  Widget text,
) {
  return Container(
    width: double.infinity,
    height: 54,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          offset: Offset(
            0,
            4,
          ),
          blurRadius: 15,
          spreadRadius: 0,
          color: Color.fromRGBO(
            0,
            0,
            0,
            0.08,
          ),
        ),
      ],
    ),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: textButtonColor,
        backgroundColor: bgButtonColor,
        // textStyle: GoogleFonts.cairo(
        //   fontSize: 30,
        //   fontWeight: FontWeight.w700,
        // ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
      ),
      child: text,
    ),
  );
}
