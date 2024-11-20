import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/view/food/elasemagrills.dart';
import 'package:zahra/view/home/home_screen.dart';

class Grills extends StatelessWidget {
  const Grills({super.key});

  @override
  Widget build(BuildContext context) {
    return zahraContainer(
      mychild: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: mediaquerywidth(0.05, context),
        ),
        child: Column(
          children: [
            SizedBox(
              height: mediaqueryheight(0.03, context),
            ),
            Center(
              child: Text(
                'مشويات',
                style: GoogleFonts.cairo(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(
                0.05,
                context,
              ),
            ),
            hospitalButton(
              'مشويات العاصمة',
              const Elasemagrills(),
              context,
            ),
            SizedBox(
              height: mediaqueryheight(
                0.03,
                context,
              ),
            ),
            hospitalButton(
              'مشويات مكه',
              const HomeScreen(),
              context,
            ),
            SizedBox(
              height: mediaqueryheight(
                0.03,
                context,
              ),
            ),
            hospitalButton(
              'مشويات الملك فاروق',
              const HomeScreen(),
              context,
            ),
          ],
        ),
      ),
    );
  }
}
