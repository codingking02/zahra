// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/view/food/grills.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({super.key});

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  // Create a GlobalKey for the Scaffold
  final TextEditingController searchcontroller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  bool isFocused = false;
  bool islastpage = false;
  final controller = PageController();
  @override
  void dispose() {
    focusNode.dispose();
    searchcontroller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    });
  }

  void onFieldSubmitted() {
    focusNode.unfocus();
    String search = searchcontroller.text;
  }

  Widget pageviewwidgets(String path, String text) {
    return SizedBox(
      height: mediaqueryheight(0.02, context),
      child: Stack(
        children: [
          Image.asset(
            path,
            fit: BoxFit.fill,
          ),
          Center(
            child: Text(
              text,
              style: GoogleFonts.cairo(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(249, 243, 228, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        focusNode.unfocus();
      },
      child: zahraContainer(
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
                  'مطاعم وكافيهات',
                  style: GoogleFonts.cairo(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(96, 114, 116, 1),
                  ),
                ),
              ),
              SizedBox(
                height: mediaqueryheight(0.02, context),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'أحدث العروض',
                        style: GoogleFonts.cairo(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(30, 30, 30, 1),
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: mediaqueryheight(
                          0.3,
                          context,
                        ),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: mediaqueryheight(
                                0.3,
                                context,
                              ),
                              child: PageView(
                                controller: controller,
                                allowImplicitScrolling: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  pageviewwidgets(
                                    'assets/restaurant1.png',
                                    'برجر المندي',
                                  ),
                                  pageviewwidgets(
                                    'assets/restaurant2.png',
                                    'مشاوي العاصمه',
                                  ),
                                  pageviewwidgets(
                                    'assets/restaurant3.png',
                                    'اكل بيتي',
                                  ),
                                  pageviewwidgets(
                                    'assets/restaurant4.png',
                                    'بيتزا الصاوي',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(
                                bottom: mediaqueryheight(
                                  0.04,
                                  context,
                                ),
                              ),
                              child: SmoothPageIndicator(
                                effect: WormEffect(
                                  paintStyle: PaintingStyle.stroke,
                                  strokeWidth: 3,
                                  spacing: mediaquerywidth(
                                    0.05,
                                    context,
                                  ),
                                  dotHeight: 20,
                                  dotWidth: 20,
                                  dotColor: Color.fromRGBO(217, 217, 217, 1),
                                  activeDotColor:
                                      Color.fromRGBO(217, 217, 217, 1),
                                ),
                                onDotClicked: (index) {
                                  controller.animateToPage(
                                    index,
                                    duration: const Duration(
                                      milliseconds: 500,
                                    ),
                                    curve: Curves.easeIn,
                                  );
                                },
                                controller: controller,
                                count: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      zahraSearchField(
                        searchcontroller,
                        onFieldSubmitted,
                        context,
                        focusNode,
                        isFocused,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          horizontal: mediaqueryheight(0.01, context),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8,
                            ),
                          ),
                          border: Border.all(
                            color: const Color.fromRGBO(222, 208, 182, 1),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'اماكن وعنواين',
                              style: GoogleFonts.cairo(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(30, 30, 30, 1),
                              ),
                            ),
                            SizedBox(
                              height: mediaqueryheight(0.2, context),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        final provider =
                                            Provider.of<NavigationProvider>(
                                          context,
                                          listen: false,
                                        );
                                        provider.selectScreen(
                                          const Grills(),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/grills.png',
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/homefood.png',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
