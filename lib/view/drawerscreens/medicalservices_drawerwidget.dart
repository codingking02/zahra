import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_function.dart';
import 'package:zahra/view/drawerscreens/homescreen_drawerwidget.dart';
import 'package:zahra/view/screens/home_screen.dart';
import 'package:zahra/view/screens/medical_services.dart';

class MedicalservicesDrawerwidget extends StatefulWidget {
  const MedicalservicesDrawerwidget({super.key});
  @override
  State<MedicalservicesDrawerwidget> createState() =>
      _MedicalservicesDrawerwidgetState();
}

class _MedicalservicesDrawerwidgetState
    extends State<MedicalservicesDrawerwidget> {
  // GlobalKey to control the Scaffold and open the drawer
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget? selectedWidget;
  int currentIndex = 1; // Keep track of selected bottom nav item

  @override
  void initState() {
    selectedWidget = const MedicalServices();
    super.initState();
  }

  // Function to handle bottom navigation item taps
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index; // Update the current index
      switch (index) {
        case 0:
          Navigator.pop(context); // Navigate back
          break;
        case 1:
          selectedWidget = const HomeScreen(); // Set the main screen
          break;
        case 2:
          selectedWidget =
              const HomescreenDrawerwidget(); // Set the favorite screen
          break;
      }
    });
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
          currentIndex: currentIndex,
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
          onTap: onTabTapped, // Handle tap event
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/arrowupleft.svg'),
              label: 'عودة',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home.svg'),
              label: 'الرئيسية',
              backgroundColor: const Color(0xffDED0B6),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/heart.svg'),
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
              ),
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
                        child: SvgPicture.asset('assets/arrowback.svg'),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      SvgPicture.asset('assets/admin.svg'),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Add all your zahraTextButton widgets here
                        // Example
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
                        // Add more buttons as needed
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
                    child: SvgPicture.asset('assets/drawer.svg'),
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
