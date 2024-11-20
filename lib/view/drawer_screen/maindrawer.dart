import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart'; // Import your provider
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_function.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen.dart';
import 'package:zahra/view/shop/homeshooping.dart';
import 'package:zahra/view/education/learning_services.dart';
import 'package:zahra/view/medical/medical_services.dart';
import 'package:zahra/view/services/public_service.dart';
import 'package:zahra/view/transportation/public_transportation.dart';
import 'package:zahra/view/food/restaurants.dart';
import 'package:zahra/view/splash/splash_screen.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(
      context,
      listen: false,
    );
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex:
            Provider.of<NavigationProvider>(context).currentNavBarIndex,
        onTap: (index) {
          final provider =
              Provider.of<NavigationProvider>(context, listen: false);
          switch (index) {
            case 0:
              provider.goBack(); // Go back if possible
              break;
            case 1:
              provider.selectScreen(
                const HomeScreen(),
              ); // Go to HomeScreen
              break;
            case 2:
              provider.selectScreen(
                const MedicalServices(),
              ); // Go to MedicalServices
              break;
            // Add more cases for additional screens if needed
          }
        },
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
      key: scaffoldKey, // Assign the key to the scaffold
      endDrawer: Container(
        width: mediaquerywidth(0.5, context),
        margin: EdgeInsets.only(
          top: mediaqueryheight(0.125, context),
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
                        ismedical(context) ? FontWeight.w700 : FontWeight.w400,
                        ismedical(context)
                            ? const Color.fromRGBO(30, 30, 30, 1)
                            : const Color.fromRGBO(178, 103, 94, 1),
                        ismedical(context)
                            ? SvgPicture.asset('assets/blackpills.svg')
                            : SvgPicture.asset('assets/redpills.svg'),
                        const MedicalServices(),
                        context,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      zahraTextButton(
                        'مطاعم وكافيهات',
                        isrestaurant(context)
                            ? FontWeight.w700
                            : FontWeight.w400,
                        isrestaurant(context)
                            ? const Color.fromRGBO(30, 30, 30, 1)
                            : const Color.fromRGBO(178, 103, 94, 1),
                        isrestaurant(context)
                            ? SvgPicture.asset('assets/blackfood.svg')
                            : SvgPicture.asset('assets/redfood.svg'),
                        const Restaurants(),
                        context,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      zahraTextButton(
                        'تسوق للمنزل',
                        isshop(context) ? FontWeight.w700 : FontWeight.w400,
                        isshop(context)
                            ? const Color.fromRGBO(30, 30, 30, 1)
                            : const Color.fromRGBO(178, 103, 94, 1),
                        isshop(context)
                            ? SvgPicture.asset('assets/blackshop.svg')
                            : SvgPicture.asset('assets/redshop.svg'),
                        const Homeshooping(),
                        context,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      zahraTextButton(
                        'خدمات تعليمية',
                        iseducations(context)
                            ? FontWeight.w700
                            : FontWeight.w400,
                        iseducations(context)
                            ? const Color.fromRGBO(30, 30, 30, 1)
                            : const Color.fromRGBO(178, 103, 94, 1),
                        iseducations(context)
                            ? SvgPicture.asset('assets/blacklearn.svg')
                            : SvgPicture.asset('assets/redlearn.svg'),
                        const LearningServices(),
                        context,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      zahraTextButton(
                        'دور عبادة',
                        provider.currentScreen.runtimeType ==
                                const SplashScreen().runtimeType
                            ? FontWeight.w700
                            : FontWeight.w400,
                        provider.currentScreen.runtimeType ==
                                const SplashScreen().runtimeType
                            ? const Color.fromRGBO(30, 30, 30, 1)
                            : const Color.fromRGBO(178, 103, 94, 1),
                        provider.currentScreen.runtimeType ==
                                const SplashScreen().runtimeType
                            ? SvgPicture.asset('assets/blackpray.svg')
                            : SvgPicture.asset('assets/redpray.svg'),
                        const SplashScreen(),
                        context,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      zahraTextButton(
                        'نقل وتوصيل',
                        istransports(context)
                            ? FontWeight.w700
                            : FontWeight.w400,
                        istransports(context)
                            ? const Color.fromRGBO(30, 30, 30, 1)
                            : const Color.fromRGBO(178, 103, 94, 1),
                        istransports(context)
                            ? SvgPicture.asset('assets/blackcycle.svg')
                            : SvgPicture.asset('assets/redcycle.svg'),
                        const PublicTransportation(),
                        context,
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.01, context),
                      ),
                      zahraTextButton(
                        'خدمات اخري',
                        isotherservice(context)
                            ? FontWeight.w700
                            : FontWeight.w400,
                        isotherservice(context)
                            ? const Color.fromRGBO(30, 30, 30, 1)
                            : const Color.fromRGBO(178, 103, 94, 1),
                        isotherservice(context)
                            ? SvgPicture.asset('assets/blacksettings.svg')
                            : SvgPicture.asset('assets/redsettings.svg'),
                        const PublicService(),
                        context,
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
                        onPressed: () {},
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
                        onPressed: () {},
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
                        onPressed: () {},
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
                height: mediaqueryheight(0.01, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: mediaquerywidth(0.05, context),
                      top: mediaqueryheight(0.02, context),
                      bottom: mediaqueryheight(0.02, context),
                    ),
                    child: InkWell(
                      onTap: () {
                        scaffoldKey.currentState
                            ?.openEndDrawer(); // Open the end drawer using the key
                      },
                      child: Image.asset(
                        'assets/zahrawhitelogo.png',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: mediaquerywidth(0.05, context),
                      top: mediaqueryheight(0.02, context),
                      bottom: mediaqueryheight(0.02, context),
                    ),
                    child: InkWell(
                      onTap: () {
                        scaffoldKey.currentState
                            ?.openEndDrawer(); // Open the end drawer using the key
                      },
                      child: SvgPicture.asset(
                        'assets/drawer.svg',
                      ),
                    ),
                  ),
                ],
              ),
              Consumer<NavigationProvider>(
                builder: (context, provider, child) {
                  return Expanded(
                    child: provider.currentScreen,
                  ); // Display the current screen
                },
              ),
            ],
          ),
        ),
      ),
      //
    );
  }
}

Widget zahraTextButton(
  String text,
  FontWeight fontWeight,
  Color foreGroundColor,
  Widget icon,
  Widget gotoWidget,
  BuildContext context,
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
      final provider = Provider.of<NavigationProvider>(context, listen: false);
      provider.selectScreen(gotoWidget);
    },
  );
}
