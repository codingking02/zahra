import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';

class Agiadcompany extends StatefulWidget {
  const Agiadcompany({super.key});

  @override
  State<Agiadcompany> createState() => _AgiadcompanyState();
}

class _AgiadcompanyState extends State<Agiadcompany> {
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
                  'شركة اجياد',
                  style: GoogleFonts.cairo(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(96, 114, 116, 1),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: mediaqueryheight(0.03, context),
                      ),
                      Text(
                        'عناوين واماكن التجمع',
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: bgButtonColor,
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      getcard(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            getmenutext(
                              'مكان التجمع  ----------------------- 7:00 صباحا',
                            ),
                            getmenutext(
                              'مكان التجمع  ----------------------- 8:00 صباحا',
                            ),
                            getmenutext(
                              'مكان التجمع  ----------------------- 8:00 صباحا',
                            ),
                            getmenutext(
                              'مكان التجمع  ----------------------- 8:00 صباحا',
                            ),
                            getmenutext(
                              'مكان التجمع  ----------------------- 9:00 صباحا',
                            ),
                          ],
                        ),
                        mediaqueryheight(0.2, context),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Text(
                        '-: ارقام التليفون',
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: bgButtonColor,
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      getcard(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            getmenutext(
                              'أ /احمد جمال                                     010000000000',
                            ),
                            getmenutext(
                              'أ /سمير سمير                                     010000000000',
                            ),
                            getmenutext(
                              'أ /احمد احمد                                    3534765383-02',
                            ),
                            getmenutext(
                              'أ / محمد احمد                                 3534765383-02',
                            ),
                          ],
                        ),
                        mediaqueryheight(0.15, context),
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

Widget getmenutext(String text) {
  return Text(
    text,
    style: GoogleFonts.cairo(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(30, 30, 30, 1),
    ),
  );
}
//  أ /احمد جمال                                     010000000000
//  أ /سمير سمير                                    010000000000
//  أ /احمد احمد                                    3534765383-02
//  أ / محمد احمد                                  3534765383-02

Widget getcard(
  Widget mywidget,
  double height,
) {
  return Card(
    elevation: 5,
    child: Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(249, 243, 228, 1),
        border: Border.all(
          color: const Color.fromRGBO(222, 208, 182, 1),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.08),
          )
        ],
      ),
      child: mywidget,
    ),
  );
}
