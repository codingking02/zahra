// ignore_for_file: unused_local_variable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _ReviewsState();
}

class _ReviewsState extends State<UserProfile> {
  // Create a GlobalKey for the Scaffold

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
              height: mediaqueryheight(0.02, context),
            ),
            TextButton.icon(
              onPressed: () {
                final provider =
                    Provider.of<NavigationProvider>(context, listen: false);
                provider.selectScreen(
                  const HomeScreen2(),
                );
              },
              label: Text(
                'تفاصيل المستخدم',
                style: GoogleFonts.notoSansArabic(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: const Color.fromRGBO(30, 35, 44, 1),
                ),
              ),
              iconAlignment: IconAlignment.start,
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 30,
                color: Color.fromRGBO(32, 34, 68, 1),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.05, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/largeusercircle.svg',
                ),
                SizedBox(
                  width: mediaquerywidth(0.2, context),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User No.#',
                        style: GoogleFonts.openSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(11, 143, 172, 1),
                        ),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.003, context),
                      ),
                      Text(
                        'Details',
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      AutoSizeText(
                        'Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti.',
                        style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(133, 133, 133, 1),
                        ),
                        textDirection: TextDirection.ltr,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mediaqueryheight(0.02, context),
            ),
            Center(
              child: Text(
                'Locations List',
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color.fromRGBO(30, 35, 44, 1),
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.02, context),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 32,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    backgroundColor: const Color.fromRGBO(11, 143, 172, 1),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add More Locations',
                    style: GoogleFonts.urbanist(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.02, context),
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
      ),
    );
  }
}

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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location Name',
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
              'ipsum dolo / ipsum dolo',
              style: GoogleFonts.openSans(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(133, 133, 133, 1),
              ),
            ),
          ],
        ),
        Center(
          child: SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                backgroundColor: const Color.fromRGBO(11, 143, 172, 1),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
              ),
              child: Text(
                'Delete',
                style: GoogleFonts.urbanist(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
