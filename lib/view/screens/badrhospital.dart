import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_texts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';

class Badrhospital extends StatefulWidget {
  const Badrhospital({super.key});

  @override
  State<Badrhospital> createState() => _BadrhospitalState();
}

class _BadrhospitalState extends State<Badrhospital> {
  // Create a GlobalKey for the Scaffold

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: zahraContainer(
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
                  'مستشفي بدر الجامعي',
                  style: GoogleFonts.cairo(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(96, 114, 116, 1),
                  ),
                ),
              ),
              SizedBox(
                height: mediaqueryheight(0.02, context),
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/badr.png",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: mediaqueryheight(0.02, context),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'مواعيد العمل',
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: bgButtonColor,
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      getnormaltexts(
                        '24 ساعة ',
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      getnormaltexts(
                        'جميع  التخصصات',
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: getnormaltexts(
                          'العيادات الخارجية من الساعة 8 صباحا حتى 1 ظهرا',
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      getnormaltexts(
                        'قسم الطوارئ متاح 24 ساعه',
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Text(
                        ': العنوان',
                        style: GoogleFonts.cairo(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(30, 30, 30, 1),
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      getnormaltexts('اضافة العنوان بالتفصيل'),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      getnormaltexts(':- ارقام التليفون'),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: getnormaltexts(
                          '010000000000 -024679458 - 0254765475',
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      Text(
                        'الموقع علي الخريطة',
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: bgButtonColor,
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/location.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      zahragotolocation(
                        context,
                        () {},
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
