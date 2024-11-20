import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/view/medical/badrhospital.dart';
import 'package:zahra/view/home/home_screen.dart';

class Hospitals extends StatelessWidget {
  const Hospitals({super.key});

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
                'مستشفيات و وحدات صحية',
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
              'مستشفي بدر الجامعي',
              const Badrhospital(),
              context,
            ),
            SizedBox(
              height: mediaqueryheight(
                0.03,
                context,
              ),
            ),
            hospitalButton(
              'مستشفي العاصمة',
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
              'عيادات تخصصية',
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
              'وحدات صحية',
              const HomeScreen(),
              context,
            ),
          ],
        ),
      ),
    );
  }
}
