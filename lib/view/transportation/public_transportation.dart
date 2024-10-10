import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/transportation/agiadcompany.dart';

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
                    InkWell(
                      onTap: () {
                        final provider = Provider.of<NavigationProvider>(
                          context,
                          listen: false,
                        );
                        provider.selectScreen(
                          const Agiadcompany(),
                        );
                      },
                      child: getcontainer(
                        context,
                        'شركة اجياد',
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
