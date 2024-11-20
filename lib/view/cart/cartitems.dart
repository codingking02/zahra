// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';

class Cartitems extends StatefulWidget {
  const Cartitems({super.key});

  @override
  State<Cartitems> createState() => _CartitemsState();
}

class _CartitemsState extends State<Cartitems> {
  // Create a GlobalKey for the Scaffold

  @override
  void dispose() {
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        zahraWhiteContainer(
          mychild: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: mediaquerywidth(0.05, context),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return orderitems(context);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: mediaqueryheight(0.02, context),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.02, context),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: mediaqueryheight(0.02, context),
          right: mediaquerywidth(0.02, context),
          child: SizedBox(
            width: mediaquerywidth(
              0.3,
              context,
            ),
            child: FloatingActionButton(
              backgroundColor: bgButtonColor,
              child: Image.asset(
                'assets/pay.png',
              ),
              onPressed: () {},
            ),
          ),
        ),
        Positioned(
          bottom: mediaqueryheight(0.02, context),
          left: mediaquerywidth(0.02, context),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Total\n',
                  style: GoogleFonts.mulish(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromRGBO(96, 114, 116, 1),
                  ),
                ),
                TextSpan(
                  text: '100 LE',
                  style: GoogleFonts.mulish(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(96, 114, 116, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
