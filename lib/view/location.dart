import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/widgets/zahra_boxes.dart';
import 'package:zahra/widgets/zahra_colors.dart';
import 'package:zahra/widgets/zahra_container.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: backgroundColors,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: mediaqueryheight(0.05, context),
              ),
              Image.asset(
                "assets/zahrasmalllogo.png",
              ),
              SizedBox(
                height: mediaqueryheight(0.02, context),
              ),
              zahraContainer(
                mychild: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: mediaquerywidth(0.05, context),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: mediaquerywidth(0.1, context),
                      ),
                      Center(
                        child: Text(
                          'حدد موقعك',
                          style: GoogleFonts.cairo(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(96, 114, 116, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
