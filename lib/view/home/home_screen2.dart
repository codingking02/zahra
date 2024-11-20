// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/view/shop/homeshooping.dart';
import 'package:zahra/view/medical/medical_services.dart';
import 'package:zahra/view/food/restaurants.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  // Create a GlobalKey for the Scaffold
  final TextEditingController searchfieldcontroller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  bool isFocused = false;
  void onFieldSubmitted() {
    focusNode.unfocus();
    String search = searchfieldcontroller.text;
  }

  @override
  void dispose() {
    searchfieldcontroller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    });
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
            children: [
              SizedBox(
                height: mediaqueryheight(0.03, context),
              ),
              zahraSearchField(
                searchfieldcontroller,
                onFieldSubmitted,
                context,
                focusNode,
                isFocused,
              ),
              SizedBox(
                height: mediaqueryheight(0.02, context),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x0000007d),
                              Color(0x000000B2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        width: double.infinity,
                        height: mediaqueryheight(0.25, context),
                        child: InkWell(
                          onTap: () {
                            final provider = Provider.of<NavigationProvider>(
                              context,
                              listen: false,
                            );
                            provider.selectScreen(
                              const MedicalServices(),
                            );
                          },
                          child: Image.asset(
                            'assets/shoppinghome.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x0000007d),
                              Color(0x000000B2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        width: double.infinity,
                        height: mediaqueryheight(0.25, context),
                        child: InkWell(
                          onTap: () {
                            final provider = Provider.of<NavigationProvider>(
                                context,
                                listen: false);
                            provider.selectScreen(
                              const Restaurants(),
                            );
                          },
                          child: Image.asset(
                            'assets/spices.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x0000007d),
                              Color(0x000000B2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        width: double.infinity,
                        height: mediaqueryheight(0.25, context),
                        child: InkWell(
                          onTap: () {
                            final provider = Provider.of<NavigationProvider>(
                              context,
                              listen: false,
                            );
                            provider.selectScreen(
                              const Homeshooping(),
                            );
                          },
                          child: Image.asset(
                            'assets/delivery.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x0000007d),
                              Color(0x000000B2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        width: double.infinity,
                        height: mediaqueryheight(0.25, context),
                        child: InkWell(
                          onTap: () {
                            final provider = Provider.of<NavigationProvider>(
                              context,
                              listen: false,
                            );
                            provider.selectScreen(
                              const Homeshooping(),
                            );
                          },
                          child: Image.asset(
                            'assets/plumber.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
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
