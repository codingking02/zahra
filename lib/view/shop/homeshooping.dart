import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/view/home/home_screen.dart';
import 'package:zahra/view/shop/hypermarket.dart';

class Homeshooping extends StatelessWidget {
  const Homeshooping({super.key});

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
            SizedBox(
              height: mediaqueryheight(0.08, context),
              child: Center(
                child: Text(
                  'تسوق للمنزل',
                  style: GoogleFonts.cairo(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(96, 114, 116, 1),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: mediaqueryheight(
                        0.05,
                        context,
                      ),
                    ),
                    hospitalButton(
                      'هايبر ذاد ماركت',
                      const Hypermarket(),
                      context,
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.03,
                        context,
                      ),
                    ),
                    hospitalButton(
                      'البركة ماركت ',
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
                      'عطار ة زمان',
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
                      'خضروات',
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
                      'منظفات منزلية',
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
                      'سوق مدينه بدر ( الخزان)',
                      const HomeScreen(),
                      context,
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.02, context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
