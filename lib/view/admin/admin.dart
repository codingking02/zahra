// ignore_for_file: unused_local_variable

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  // Create a GlobalKey for the Scaffold

  @override
  Widget build(BuildContext context) {
    return zahraWhiteContainer(
      mychild: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: mediaquerywidth(0.05, context),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: mediaqueryheight(0.02, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Admin!',
                          style: GoogleFonts.inter(
                            color: const Color.fromRGBO(1, 14, 22, 1),
                            fontSize: 19.39,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.01, context),
                        ),
                        Text(
                          'Welcome back to your panel.',
                          style: GoogleFonts.inter(
                            color: const Color.fromRGBO(150, 150, 150, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: const Color.fromRGBO(232, 245, 243, 1),
                      radius: 50,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'No. Of Users : 20',
                              style: GoogleFonts.bubblegumSans(
                                color: const Color.fromRGBO(11, 143, 172, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: mediaqueryheight(0.01, context),
                            ),
                            Text(
                              'Locations : 200',
                              style: GoogleFonts.bubblegumSans(
                                color: const Color.fromRGBO(11, 143, 172, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    height: mediaqueryheight(0.04, context),
                    child: Text(
                      'قائمة المستخدمين',
                      style: GoogleFonts.notoSansArabic(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        shadows: [
                          const Shadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.19),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(
                      bottom: 30,
                    ),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: mediaqueryheight(0.02, context),
                      );
                    },
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: index == 9
                            ? const EdgeInsets.only(
                                bottom: 10,
                              )
                            : EdgeInsets.zero,
                        child: getUsers(
                          index: index,
                          context: context,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              top: mediaqueryheight(-0.03, context),
              right: mediaqueryheight(0.025, context),
              child: Transform.rotate(
                angle: 90 * pi / 180,
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    widthFactor: 0.5,
                    child: Container(
                      clipBehavior: Clip.none,
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Color.fromRGBO(11, 143, 172, 1),
                            width: 4,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class HalfCircle extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = const Color.fromRGBO(11, 143, 172, 1)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 3;

//     canvas.drawArc(
//       Rect.fromCircle(
//         center: Offset(size.width / 2, size.height / 2),
//         radius: size.width / 2,
//       ),
//       pi,
//       pi,
//       false,
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     throw UnimplementedError();
//   }
// }
Widget getUsers({required int index, required BuildContext context}) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 10,
    ),
    height: 72,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color.fromRGBO(232, 245, 243, 1),
      borderRadius: BorderRadius.all(
        Radius.circular(
          10,
        ),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/usercircle.svg',
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User $index',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(11, 143, 172, 1),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            Text(
              'Jorem ipsum dolor, consectetur.',
              style: GoogleFonts.openSans(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(133, 133, 133, 1),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/edit.svg',
            ),
            SizedBox(
              width: mediaquerywidth(0.03, context),
            ),
            SvgPicture.asset(
              'assets/delete.svg',
            ),
          ],
        ),
      ],
    ),
  );
}
