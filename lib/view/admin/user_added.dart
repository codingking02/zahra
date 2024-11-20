// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';

class UserAdded extends StatelessWidget {
  const UserAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return zahraOffWhiteContainer(
      mychild: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: mediaquerywidth(0.05, context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mediaqueryheight(0.1, context),
            ),
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color.fromRGBO(19, 172, 11, 1),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 100,
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.03, context),
            ),
            Center(
              child: Text(
                'تم اضافة/تعديل المستخدم',
                style: GoogleFonts.notoSansArabic(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: const Color.fromRGBO(30, 35, 44, 1),
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.03, context),
            ),
            Center(
              child: getReturn(() {}, context),
            ),
          ],
        ),
      ),
    );
  }
}
