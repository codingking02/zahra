// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  // Create a GlobalKey for the Scaffold
  List<String> rating = ['Exellent', 'Good', 'Average', 'Below Average'];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return zahraOffWhiteContainer(
      mychild: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: mediaquerywidth(0.05, context),
        ),
        child: Stack(
          children: [
            Column(
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
                    'Reviews',
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: const Color.fromRGBO(32, 34, 68, 1),
                    ),
                  ),
                  iconAlignment: IconAlignment.start,
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color.fromRGBO(32, 34, 68, 1),
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.01, context),
                ),
                Center(
                  child: Text(
                    '4.8',
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      fontSize: 38,
                      color: const Color.fromRGBO(32, 34, 68, 1),
                    ),
                  ),
                ),
                Center(
                  child: RatingBar(
                    initialRating: 3.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full: const Icon(
                        Icons.star,
                        color: Color(0xffff9c07),
                      ),
                      half: const Icon(
                        Icons.star_half,
                        color: Color(0xfffac840),
                      ),
                      empty: const Icon(
                        Icons.star_border,
                        color: Color(0xfffac840),
                      ),
                    ),
                    ignoreGestures: true,
                    itemSize: 20.0,
                    onRatingUpdate: (double value) {},
                  ),
                ),
                Center(
                  child: Text(
                    'Based on 448 Reviews',
                    style: GoogleFonts.mulish(
                      fontSize: 13.0,
                      color: const Color.fromRGBO(84, 84, 84, 1),
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 3,
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.02, context),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 40,
                    child: Row(
                      children: List.generate(
                        4,
                        (index) {
                          final isActive = index == activeIndex;
                          return Row(
                            children: [
                              SizedBox(
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      activeIndex = index;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: isActive
                                        ? const Color.fromRGBO(22, 127, 113, 1)
                                        : const Color.fromRGBO(
                                            232, 241, 255, 1),
                                    foregroundColor: isActive
                                        ? Colors.white
                                        : const Color.fromRGBO(32, 34, 68, 1),
                                  ),
                                  child: Text(
                                    rating[index],
                                    style: GoogleFonts.mulish(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: mediaquerywidth(0.02, context),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom:
                              index == 9 ? mediaqueryheight(0.1, context) : 0.0,
                        ),
                        child: Column(
                          children: [
                            getReviews(context),
                            SizedBox(
                              height: mediaqueryheight(0.02, context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 15,
              left: 30,
              right: 30,
              child: getReviewButton(
                () {},
                SvgPicture.asset('assets/writereview.svg'),
                context,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
