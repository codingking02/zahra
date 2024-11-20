import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/education/school.dart';

class LearningServices extends StatelessWidget {
  const LearningServices({super.key});

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
            Center(
              child: Text(
                'خدمات تعليمية',
                style: GoogleFonts.cairo(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(
                0.02,
                context,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        final provider = Provider.of<NavigationProvider>(
                          context,
                          listen: false,
                        );
                        provider.selectScreen(
                          const School(),
                        );
                      },
                      child: getcontainer(
                        context,
                        'مدارس',
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.02,
                        context,
                      ),
                    ),
                    getcontainer(
                      context,
                      'سنتر تعليمي',
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.02,
                        context,
                      ),
                    ),
                    getcontainer(
                      context,
                      'دروس خصوصية',
                    ),
                    SizedBox(
                      height: mediaqueryheight(
                        0.02,
                        context,
                      ),
                    ),
                    getcontainer(
                      context,
                      'تحفيظ قرآن',
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
