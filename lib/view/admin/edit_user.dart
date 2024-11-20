// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class EditUser extends StatefulWidget {
  const EditUser({super.key});

  @override
  State<EditUser> createState() => _ReviewsState();
}

class _ReviewsState extends State<EditUser> {
  // Create a GlobalKey for the Scaffold
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _locationController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _locationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: zahraWhiteContainer(
        mychild: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: mediaquerywidth(0.05, context),
          ),
          child: SingleChildScrollView(
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
                    'اضافة / تعديل مستخدم',
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
                text(
                  'User name',
                ),
                SizedBox(
                  height: mediaqueryheight(0.01, context),
                ),
                editUserField(
                  _usernameController,
                  false,
                  30,
                  FilteringTextInputFormatter.allow(
                    RegExp('[a-zA-Z]*'),
                  ),
                  false,
                  'Add username',
                ),
                SizedBox(
                  height: mediaqueryheight(0.01, context),
                ),
                text(
                  'User Email',
                ),
                SizedBox(
                  height: mediaqueryheight(0.01, context),
                ),
                editUserField(
                  _passwordController,
                  true,
                  30,
                  FilteringTextInputFormatter.allow(
                    RegExp(
                        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&*])[A-Za-z\d@#$%^&*]{8,}$'),
                  ),
                  false,
                  'Add user email',
                ),
                SizedBox(
                  height: mediaqueryheight(0.01, context),
                ),
                text(
                  'User Location',
                ),
                SizedBox(
                  height: mediaqueryheight(0.01, context),
                ),
                editUserField(
                  _locationController,
                  false,
                  30,
                  FilteringTextInputFormatter.allow(
                    RegExp(
                      r'^(https?:\/\/)?(www\.)?[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+(:\d+)?(\/.*)?$',
                    ),
                  ),
                  true,
                  'Add user location',
                ),
                SizedBox(
                  height: mediaqueryheight(0.02, context),
                ),
                Center(
                  child: getAddUser(() {}, context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget text(String text) {
  return Text(
    text,
    style: GoogleFonts.urbanist(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(0, 0, 0, 1),
    ),
  );
}
