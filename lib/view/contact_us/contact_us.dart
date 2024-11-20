// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  // Create a GlobalKey for the Scaffold
  @override
  Widget build(BuildContext context) {
    return zahraContainer(
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
              height: mediaqueryheight(0.02, context),
            ),
            TextButton.icon(
              onPressed: () {
                final provider =
                    Provider.of<NavigationProvider>(context, listen: false);
                provider.selectScreen(const HomeScreen2());
              },
              label: Text(
                'Menu',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: const Color.fromRGBO(113, 113, 113, 1),
                ),
              ),
              iconAlignment: IconAlignment.start,
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Color.fromRGBO(113, 113, 113, 1),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            Text(
              'Contact Us',
              style: GoogleFonts.poppins(
                fontSize: 42,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            Text(
              'Don’t hesitate to contact us whether you have a suggestion on our improvement, a complain to discuss or an issue to solve.',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(113, 113, 113, 1),
              ),
              textDirection: TextDirection.ltr,
              softWrap: true,
              maxLines: 3,
            ),
            SizedBox(
              height: mediaqueryheight(0.02, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getContactUsDetails(
                  context,
                  'assets/phone.svg',
                  'Call Us',
                  'Our team is on the line',
                  'Mon-Fri  •  9-17',
                ),
                getContactUsDetails(
                  context,
                  'assets/email.svg',
                  'Email Us',
                  'Our team is online',
                  'Mon-Fri  •  9-17',
                ),
              ],
            ),
            SizedBox(
              height: mediaqueryheight(0.03, context),
            ),
            Text(
              'Contact Us in Social Media',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(113, 113, 113, 1),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getSocialMedia(
                      context,
                      'Instagram',
                      'instagram',
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.01, context),
                    ),
                    getSocialMedia(
                      context,
                      'telegram',
                      'telegram',
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.01, context),
                    ),
                    getSocialMedia(
                      context,
                      'facebook',
                      'facebook',
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.01, context),
                    ),
                    getSocialMedia(
                      context,
                      'whatsapp',
                      'whatsapp',
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.01, context),
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
