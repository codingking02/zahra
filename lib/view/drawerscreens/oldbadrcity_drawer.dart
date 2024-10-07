import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_function.dart';
import 'package:zahra/view/drawerscreens/homescreen_drawerwidget.dart';
import 'package:zahra/view/screens/home_screen.dart';
import 'package:zahra/view/screens/homeshooping.dart';
import 'package:zahra/view/screens/hospitals.dart';
import 'package:zahra/view/screens/learning_services.dart';
import 'package:zahra/view/screens/medical_services.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/view/screens/oldbadrcity.dart';
import 'package:zahra/view/screens/public_service.dart';
import 'package:zahra/view/screens/public_transportation.dart';
import 'package:zahra/view/screens/restaurants.dart';
import 'package:zahra/view/screens/splash_screen.dart';

class OldbadrcityDrawer extends StatefulWidget {
  const OldbadrcityDrawer({super.key});
  @override
  State<OldbadrcityDrawer> createState() => _OldbadrcityDrawerState();
}

class _OldbadrcityDrawerState extends State<OldbadrcityDrawer> {
  // GlobalKey to control the Scaffold and open the drawer
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget? selectedWidget;
  @override
  void initState() {
    selectedWidget = const Oldbadrcity();
    super.initState();
  }

  // Keeps track of the current screen
  Widget zahraTextButton(
    String text,
    FontWeight fontWeight,
    Color foreGroundColor,
    Widget icon,
    Widget gotoWidget,
  ) {
    return TextButton.icon(
      label: Text(text),
      icon: icon,
      iconAlignment: IconAlignment.end,
      style: TextButton.styleFrom(
        foregroundColor: foreGroundColor,
        textStyle: GoogleFonts.cairo(
          fontSize: 16,
          fontWeight: fontWeight,
        ),
      ),
      onPressed: () {
        setState(() {
          selectedWidget = gotoWidget;
          // Navigator.pop(context);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          elevation: 10,
          selectedItemColor: const Color(0xffDED0B6),
          selectedLabelStyle: GoogleFonts.cairo(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedItemColor: const Color(0xffF9F3E4),
          unselectedLabelStyle: GoogleFonts.cairo(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          backgroundColor: const Color(0xff607274),
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'assets/arrowupleft.svg',
                ),
              ),
              label: 'عودة',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home.svg',
                ),
                label: 'الرئيسية',
                backgroundColor: const Color(0xffDED0B6)),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/heart.svg',
              ),
              label: 'المفضله',
            ),
          ],
        ),
        key: _scaffoldKey, // Assign the key to the scaffold
        endDrawer: Container(
          width: mediaquerywidth(0.5, context),
          margin: EdgeInsets.only(
            top: mediaqueryheight(0.15, context),
          ),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(-4, 0),
                blurRadius: 15,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.12),
              )
            ],
          ),
          child: Drawer(
            backgroundColor: const Color.fromRGBO(249, 243, 228, 1),
            child: Column(
              children: [
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          'assets/arrowback.svg',
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      SvgPicture.asset(
                        'assets/admin.svg',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        zahraTextButton(
                          'خدمات طبية',
                          ismedical(selectedWidget!)
                              ? FontWeight.w700
                              : FontWeight.w400,
                          ismedical(selectedWidget!)
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          ismedical(selectedWidget!)
                              ? SvgPicture.asset('assets/blackpills.svg')
                              : SvgPicture.asset('assets/redpills.svg'),
                          const MedicalServices(),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.01, context),
                        ),
                        zahraTextButton(
                          'مطاعم وكافيهات',
                          isrestaurant(selectedWidget!)
                              ? FontWeight.w700
                              : FontWeight.w400,
                          isrestaurant(selectedWidget!)
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          isrestaurant(selectedWidget!)
                              ? SvgPicture.asset('assets/blackfood.svg')
                              : SvgPicture.asset('assets/redfood.svg'),
                          const Restaurants(),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.01, context),
                        ),
                        zahraTextButton(
                          'تسوق للمنزل',
                          isshop(selectedWidget!)
                              ? FontWeight.w700
                              : FontWeight.w400,
                          isshop(selectedWidget!)
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          isshop(selectedWidget!)
                              ? SvgPicture.asset('assets/blackshop.svg')
                              : SvgPicture.asset('assets/redshop.svg'),
                          const Homeshooping(),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.01, context),
                        ),
                        zahraTextButton(
                          'خدمات تعليمية',
                          iseducations(selectedWidget!)
                              ? FontWeight.w700
                              : FontWeight.w400,
                          iseducations(selectedWidget!)
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          iseducations(selectedWidget!)
                              ? SvgPicture.asset('assets/blacklearn.svg')
                              : SvgPicture.asset('assets/redlearn.svg'),
                          const LearningServices(),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.01, context),
                        ),
                        zahraTextButton(
                          'دور عبادة',
                          selectedWidget.runtimeType ==
                                  const SplashScreen().runtimeType
                              ? FontWeight.w700
                              : FontWeight.w400,
                          selectedWidget.runtimeType ==
                                  const SplashScreen().runtimeType
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          selectedWidget.runtimeType ==
                                  const SplashScreen().runtimeType
                              ? SvgPicture.asset('assets/blackpray.svg')
                              : SvgPicture.asset('assets/redpray.svg'),
                          const SplashScreen(),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.01, context),
                        ),
                        zahraTextButton(
                          'نقل وتوصيل',
                          istransports(selectedWidget!)
                              ? FontWeight.w700
                              : FontWeight.w400,
                          istransports(selectedWidget!)
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          istransports(selectedWidget!)
                              ? SvgPicture.asset('assets/blackcycle.svg')
                              : SvgPicture.asset('assets/redcycle.svg'),
                          const PublicTransportation(),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.01, context),
                        ),
                        zahraTextButton(
                          'خدمات اخري',
                          isotherservice(selectedWidget!)
                              ? FontWeight.w700
                              : FontWeight.w400,
                          isotherservice(selectedWidget!)
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          isotherservice(selectedWidget!)
                              ? SvgPicture.asset('assets/blacksettings.svg')
                              : SvgPicture.asset('assets/redsettings.svg'),
                          const PublicService(),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.02, context),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: mediaquerywidth(0.1, context),
                          ),
                          width: double.infinity,
                          child: const Divider(
                            thickness: 1,
                            color: Color.fromRGBO(222, 208, 182, 1),
                          ),
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.02, context),
                        ),
                        TextButton.icon(
                          label: const Text('اعدادات'),
                          icon: SvgPicture.asset('assets/settings.svg'),
                          iconAlignment: IconAlignment.end,
                          style: TextButton.styleFrom(
                            foregroundColor: bgButtonColor,
                            textStyle: GoogleFonts.cairo(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedWidget = const HomescreenDrawerwidget();
                              // Navigator.pop(context);
                            });
                          },
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.005, context),
                        ),
                        TextButton.icon(
                          label: const Text('نبذة عنا'),
                          icon: SvgPicture.asset('assets/info.svg'),
                          iconAlignment: IconAlignment.end,
                          style: TextButton.styleFrom(
                            foregroundColor: bgButtonColor,
                            textStyle: GoogleFonts.cairo(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedWidget = const HomescreenDrawerwidget();
                              // Navigator.pop(context);
                            });
                          },
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.005, context),
                        ),
                        TextButton.icon(
                          label: const Text('خـــروج'),
                          icon: SvgPicture.asset('assets/leave.svg'),
                          iconAlignment: IconAlignment.end,
                          style: TextButton.styleFrom(
                            foregroundColor: bgButtonColor,
                            textStyle: GoogleFonts.cairo(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedWidget = const HomescreenDrawerwidget();
                              // Navigator.pop(context);
                            });
                          },
                        ),
                        SizedBox(
                          height: mediaqueryheight(0.005, context),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: backgroundColors,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: mediaqueryheight(0.05, context),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: mediaquerywidth(0.1, context),
                    top: mediaqueryheight(0.03, context),
                    bottom: mediaqueryheight(0.03, context),
                  ),
                  child: InkWell(
                    onTap: () {
                      _scaffoldKey.currentState
                          ?.openEndDrawer(); // Open the end drawer using the key
                    },
                    child: SvgPicture.asset(
                      'assets/drawer.svg',
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.02, context),
                ),
                Expanded(
                  child: selectedWidget!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Define different screens
