import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_texts.dart';

class Hypermarket extends StatefulWidget {
  const Hypermarket({super.key});

  @override
  State<Hypermarket> createState() => _HypermarketState();
}

class _HypermarketState extends State<Hypermarket> {
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
                  'مشويات العاصمة',
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
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: mediaqueryheight(0.03, context),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/hyperzadmarket.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Text(
                        'المنيو',
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
                              'ارز بسمتي -------------------------------  90 جنيه',
                            ),
                            getmenutext(
                              'زيت الضحي ---------------------------    120 جنيه',
                            ),
                            getmenutext(
                              'سكر الضحي  ----------------------------  40 جنيه',
                            ),
                            getmenutext(
                              'لبن جهينه  -------------------------------  40جنيه',
                            ),
                            getmenutext(
                              'كبدو ضاني  -------------------------  220 جنيه ',
                            ),
                          ],
                        ),
                        mediaqueryheight(0.2, context),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.04, context),
                      ),
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
                      getnormaltexts(':- ارقام التليفون'),
                      SizedBox(
                        height: mediaqueryheight(0.015, context),
                      ),
                      getnormaltexts(
                        '010000000000 -024679458 - 0254765475',
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

// ارز بسمتي -------------------------------  90 جنيه
// زيت الضحي ---------------------------    120 جنيه
// سكر الضحي  ----------------------------  40 جنيه
// لبن جهينه  -------------------------------  40جنيه
// كبدو ضاني  ----------------------------  220 جنيه
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
