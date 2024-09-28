import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_texts.dart';
import 'package:zahra/view/drawerwidgets/homescreen_drawerwidget.dart';
import 'package:zahra/view/screens/home_screen.dart';
import 'package:zahra/custom/zahra_colors.dart';

class TrainStation extends StatelessWidget {
  const TrainStation({super.key});

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
                'محطة القطار الكهربائي',
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    zahraboldtexts(': العنوان'),
                    SizedBox(
                      height: mediaqueryheight(
                        0.025,
                        context,
                      ),
                    ),
                    getnormaltexts('اضافة العنوان بالتفصيل'),
                    SizedBox(
                      height: mediaqueryheight(
                        0.025,
                        context,
                      ),
                    ),
                    zahraboldtexts('مواعيد القطار'),
                    SizedBox(
                      height: mediaqueryheight(
                        0.025,
                        context,
                      ),
                    ),
                    getnormaltexts('من الساعة 6  صباحا و حتى الساعة 11 مساء'),
                    SizedBox(
                      height: mediaqueryheight(
                        0.025,
                        context,
                      ),
                    ),
                    zahraboldtexts('-: ارقام التليفون'),
                    SizedBox(
                      height: mediaqueryheight(
                        0.025,
                        context,
                      ),
                    ),
                    getnormaltexts('010000000000 -024679458 - 0254765475'),
                    SizedBox(
                      height: mediaqueryheight(
                        0.025,
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
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/trainstationmap.png',
                        fit: BoxFit.fill,
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
