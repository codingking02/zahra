import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/view/drawerwidgets/homescreen_drawerwidget.dart';
import 'package:zahra/view/screens/home_screen.dart';

class PublicTransportation extends StatelessWidget {
  const PublicTransportation({super.key});

  @override
  Widget build(BuildContext context) {
    return zahraContainer(
      mychild: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: mediaquerywidth(0.05, context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: mediaqueryheight(0.03, context),
            ),
            Center(
              child: Text(
                'مواصلات العاصمة الادارية الجديدة',
                style: GoogleFonts.cairo(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(
                0.03,
                context,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getcontainer(
                      context,
                      'شركة اجياد',
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.02,
                        context,
                      ),
                    ),
                    getcontainer(
                      context,
                      'مواصلات مصر',
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.02,
                        context,
                      ),
                    ),
                    getcontainer(
                      context,
                      'شركة الاستاذ',
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.02,
                        context,
                      ),
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
