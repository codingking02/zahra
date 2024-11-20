import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/view/admin/edit_user.dart';

class SuccsessfulAuth extends StatelessWidget {
  const SuccsessfulAuth({super.key});
  @override
  Widget build(BuildContext context) {
    return zahraPurpleContainer(
      mychild: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: mediaquerywidth(0.05, context),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: mediaqueryheight(0.6, context),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 249, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        40,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/auth.svg'),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Text(
                        'Congratulations',
                        style: GoogleFonts.jost(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(32, 34, 68, 1),
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Text(
                        'Your Account is Ready to Use. You will be redirected to the Home Page in a Few Seconds.',
                        style: GoogleFonts.mulish(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(84, 84, 84, 1),
                        ),
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      SpinKitCircle(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 10,
                            width: 4,
                            color: Color.fromRGBO(32, 34, 68, 1),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
