import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';

Widget zahraButton(
  BuildContext context,
  Widget screen,
  Widget text,
  void Function() ontap,
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
        ontap();
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

Widget zharabackbutton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 54,
    child: OutlinedButton.icon(
      onPressed: () {
        Navigator.pop(context);
      },
      label: SvgPicture.asset('assets/back.svg'),
      iconAlignment: IconAlignment.end,
      icon: SvgPicture.asset('assets/arrowback.svg'),
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        side: const BorderSide(
          color: Color.fromRGBO(178, 103, 94, 1),
        ),
      ),
    ),
  );
}

Widget zahragetlocationbutton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 36,
    child: OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: mediaquerywidth(
            0.02,
            context,
          ),
        ), // Remove default padding
        backgroundColor: const Color.fromRGBO(222, 208, 182, 0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        side: const BorderSide(
          width: 1,
          color: Color(0xffDED0B6),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/map.svg',
          ),
          Text(
            'حدد موقعكِ',
            style: GoogleFonts.cairo(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(30, 30, 30, 0.5),
            ),
          ),
        ],
      ),
    ),
  );
}
