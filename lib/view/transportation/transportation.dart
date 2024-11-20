import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/view/home/home_screen.dart';
import 'package:zahra/view/transportation/train_station.dart';

class Transportation extends StatelessWidget {
  const Transportation({super.key});

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
                'نقــل ومواصلات',
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
              'محطة القطار  الكهربائي',
              const TrainStation(),
              context,
            ),
            SizedBox(
              height: mediaqueryheight(
                0.03,
                context,
              ),
            ),
            hospitalButton(
              'مواصلات مدينه بدر ( الخزان)',
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
              'مواصلات العاصمة الادارية الجديدة',
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
              'مواصلات وسط القاهرة',
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
              'مواصلات المحافظات',
              const HomeScreen(),
              context,
            ),
          ],
        ),
      ),
    );
  }
}
