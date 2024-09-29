import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/view/screens/home_screen.dart';
import 'package:zahra/view/screens/hospitals.dart';
import 'package:zahra/view/screens/medical_services.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/view/screens/mostafa_school.dart';
import 'package:zahra/view/screens/train_station.dart';
import 'package:zahra/view/screens/transportation.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/view/screens/zahratech.dart';

class MostafaschoolDrawer extends StatefulWidget {
  const MostafaschoolDrawer({super.key});
  @override
  State<MostafaschoolDrawer> createState() => _ZahratechDrawerState();
}

class _ZahratechDrawerState extends State<MostafaschoolDrawer> {
  // GlobalKey to control the Scaffold and open the drawer
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget? selectedWidget;
  @override
  void initState() {
    selectedWidget = const MostafaSchool();
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
    bool isMedicalServices =
        selectedWidget.runtimeType == const HomeScreen().runtimeType ||
            selectedWidget.runtimeType == const Hospitals().runtimeType ||
            selectedWidget.runtimeType == const MedicalServices().runtimeType;
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
                          isMedicalServices ? FontWeight.w700 : FontWeight.w400,
                          isMedicalServices
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          isMedicalServices
                              ? SvgPicture.asset('assets/blackpills.svg')
                              : SvgPicture.asset('assets/redpills.svg'),
                          const HomeScreen(),
                        ),
                        zahraTextButton(
                          'مطاعم وكافيهات',
                          selectedWidget.runtimeType ==
                                  const MedicalServices().runtimeType
                              ? FontWeight.w700
                              : FontWeight.w400,
                          selectedWidget.runtimeType ==
                                  const MedicalServices().runtimeType
                              ? const Color.fromRGBO(30, 30, 30, 1)
                              : const Color.fromRGBO(178, 103, 94, 1),
                          selectedWidget.runtimeType ==
                                  const MedicalServices().runtimeType
                              ? SvgPicture.asset('assets/blackfood.svg')
                              : SvgPicture.asset('assets/redfood.svg'),
                          const MedicalServices(),
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
