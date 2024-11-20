import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/data/provider/navigation_provider.dart';

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

Widget hospitalButton(String text, Widget gotoWidget, BuildContext context) {
  return Container(
    width: double.infinity,
    height: 57,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          offset: Offset(
            0,
            4,
          ),
          blurRadius: 10,
          spreadRadius: 0,
          color: Color.fromRGBO(0, 0, 0, 0.08),
        )
      ],
    ),
    child: OutlinedButton(
      onPressed: () {
        final provider =
            Provider.of<NavigationProvider>(context, listen: false);
        provider.selectScreen(
          gotoWidget,
        );
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(249, 243, 228, 1),
        padding: EdgeInsets.symmetric(
          horizontal: mediaqueryheight(0.01, context),
        ),
        elevation: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
        ),
        side: const BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/leftarrow.svg',
          ),
          Text(
            text,
            style: GoogleFonts.cairo(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(30, 30, 30, 1),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget zahragotolocation(
  BuildContext context,
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
      child: Text(
        'اذهب للخريطه',
        style: GoogleFonts.cairo(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color.fromRGBO(249, 243, 228, 1),
        ),
      ),
    ),
  );
}

Widget zahraPayment(
  BuildContext context,
  Widget screen,
  Widget text,
  void Function() ontap,
) {
  return Container(
    padding: EdgeInsets.zero,
    width: double.infinity,
    height: 45,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          offset: Offset(
            0,
            1,
          ),
          blurRadius: 4,
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
        final provider =
            Provider.of<NavigationProvider>(listen: false, context);
        provider.selectScreen(screen);
        ontap();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        foregroundColor: textButtonColor,
        backgroundColor: bgButtonColor,
        // textStyle: GoogleFonts.cairo(
        //   fontSize: 30,
        //   fontWeight: FontWeight.w700,
        // ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
        ),
      ),
      child: text,
    ),
  );
}

Widget zahraPaymentMethod(
  BuildContext context,
  // Widget screen,
  String path,
  String text,
  Color bgcolor,
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
          spreadRadius: 0,
          blurRadius: 4,
          color: Color.fromRGBO(
            0,
            0,
            0,
            0.08,
          ),
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(
          24,
        ),
      ),
    ),
    child: ElevatedButton(
      onPressed: () {
        // final provider =
        //     Provider.of<NavigationProvider>(listen: false, context);
        // provider.selectScreen(screen);
        ontap();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        elevation: 5,
        foregroundColor: Colors.white,
        backgroundColor: bgcolor,
        // textStyle: GoogleFonts.cairo(
        //   fontSize: 30,
        //   fontWeight: FontWeight.w700,
        // ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              17,
            ),
          ),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(path),
          SizedBox(
            width: mediaquerywidth(0.03, context),
          ),
          Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget zahraPaymentbutton(
  BuildContext context,
  // Widget screen,

  String text,
  void Function() ontap,
) {
  return Container(
    width: double.infinity,
    height: 71,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          offset: Offset(
            0,
            4,
          ),
          spreadRadius: 0,
          blurRadius: 4,
          color: Color.fromRGBO(
            0,
            0,
            0,
            0.08,
          ),
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(
          24,
        ),
      ),
    ),
    child: ElevatedButton(
      onPressed: () {
        // final provider =
        //     Provider.of<NavigationProvider>(listen: false, context);
        // provider.selectScreen(screen);
        ontap();
      },
      style: ElevatedButton.styleFrom(
        elevation: 5,

        foregroundColor: Colors.white,
        backgroundColor: bgButtonColor,
        // textStyle: GoogleFonts.cairo(
        //   fontSize: 30,
        //   fontWeight: FontWeight.w700,
        // ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              24,
            ),
          ),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}

Widget getCheckNumber(
  void Function() ontap,
  BuildContext context,
  String text,
) {
  return InkWell(
    onTap: () {},
    child: Stack(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 8,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: ElevatedButton(
            onPressed: ontap,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              backgroundColor: const Color.fromRGBO(9, 97, 245, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
            child: Text(
              text,
              style: GoogleFonts.notoSansArabic(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 10,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              'assets/arrowright.svg',
            ),
          ),
        ),
      ],
    ),
  );
}
