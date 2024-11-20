import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_texts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';

class Moustafakamel extends StatefulWidget {
  const Moustafakamel({super.key});

  @override
  State<Moustafakamel> createState() => _MoustafakamelState();
}

class _MoustafakamelState extends State<Moustafakamel> {
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
                  'مدرسة مصطفي كامل',
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
                  "assets/moustafakamel.png",
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
                        ': العنوان',
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
                        'اضافة العنوان بالتفصيل',
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      Text(
                        ':- ارقام التليفون',
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: bgButtonColor,
                        ),
                      ),
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
