import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_texts.dart';

class Zahratech extends StatelessWidget {
  const Zahratech({super.key});

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
                'زهرة تكنولوجي',
                style: GoogleFonts.cairo(
                  fontSize: 28,
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    zahraboldtexts(
                      ': العنوان',
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.015,
                        context,
                      ),
                    ),
                    getnormaltexts(
                      'اضافة العنوان بالتفصيل',
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.015,
                        context,
                      ),
                    ),
                    zahraboldtexts('-: ارقام التليفون'),
                    SizedBox(
                      height: mediaqueryheight(
                        0.015,
                        context,
                      ),
                    ),
                    getnormaltexts('010000000000 -024679458 - 0254765475'),
                    SizedBox(
                      height: mediaqueryheight(
                        0.05,
                        context,
                      ),
                    ),
                    Text(
                      'الموقع على الخريطة',
                      style: GoogleFonts.cairo(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: bgButtonColor,
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.025,
                        context,
                      ),
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            'assets/trainstationmap.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            height: mediaqueryheight(0.055, context),
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                  blurRadius: 15,
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(0, 0, 0, 0.08),
                                ),
                              ],
                              color: bgButtonColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(
                                  10,
                                ),
                                bottomRight: Radius.circular(
                                  10,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'اذهب للخريطه',
                                style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: const Color.fromRGBO(249, 243, 228, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
