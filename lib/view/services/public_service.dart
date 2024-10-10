import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/view/home/home_screen.dart';
import 'package:zahra/view/services/oldbadrcity.dart';

class PublicService extends StatelessWidget {
  const PublicService({super.key});

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
              height: mediaqueryheight(
                0.03,
                context,
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.08, context),
              child: Center(
                child: Text(
                  'خدمات عامة',
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
                      'جهاز مدينه بدر القديم',
                      const Oldbadrcity(),
                      context,
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.03,
                        context,
                      ),
                    ),
                    hospitalButton(
                      'جهاز مدينه بدر الجديد',
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
                      'شركة الكهرباء',
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
                      'شركة المياة',
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
                      'شركة الغاز الطبيعي',
                      const Oldbadrcity(),
                      context,
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.03,
                        context,
                      ),
                    ),
                    hospitalButton(
                      'تركيب كاميرات',
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
                      'تركيب انتركم',
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
                      'اعمال السباكه',
                      const HomeScreen(),
                      context,
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.05,
                        context,
                      ),
                    ),
                    hospitalButton(
                      'اعمال الكهرباء والدش',
                      const Oldbadrcity(),
                      context,
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.03,
                        context,
                      ),
                    ),
                    hospitalButton(
                      'اعمال الحدادة',
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
                      'اعمال السيراميك',
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
                      'اعمال الرخام والجرانيت',
                      const HomeScreen(),
                      context,
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.05,
                        context,
                      ),
                    ),
                    hospitalButton(
                      'اعمال النقاشه',
                      const Oldbadrcity(),
                      context,
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.03,
                        context,
                      ),
                    ),
                    hospitalButton(
                      'انابيب الغاز',
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
                      'اساس منزلي جديد ومستعمل',
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
                      'ملابس ومفروشات منزلية',
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
                      'كوافير حريمي',
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
                      'كوافير رجالي',
                      const HomeScreen(),
                      context,
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
