// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({super.key});

  @override
  State<AddLocation> createState() => _ReviewsState();
}

class _ReviewsState extends State<AddLocation> {
  // Create a GlobalKey for the Scaffold
  String? selectedLocation;

  // List of dropdown items
  final List<String> locations = [
    "New York",
    "London",
    "Tokyo",
    "Paris",
    "Sydney",
  ];

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
                'اضافة الموقع',
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
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(247, 248, 249, 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                border: Border.all(
                  color: const Color.fromRGBO(133, 133, 133, 1),
                  width: 1.3,
                  style: BorderStyle.solid,
                ),
              ),
              child: DropdownButtonHideUnderline(
                // Hides the default underline
                child: DropdownButton<String>(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color.fromRGBO(131, 145, 161, 1),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  hint: Text(
                    selectedLocation ?? 'List Of Locations',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(131, 145, 161, 1),
                    ),
                  ),
                  items: locations.map((String location) {
                    return DropdownMenuItem<String>(
                      value: location,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        child: Text(
                          location,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromRGBO(80, 90, 100, 1),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedLocation = value;
                    });
                  },
                  isExpanded: true,
                  dropdownColor: const Color.fromRGBO(
                      247, 248, 249, 1), // Menu background color
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromRGBO(80, 90, 100, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.03, context),
            ),
            Center(
              child: getAddUser(() {}, context),
            ),
          ],
        ),
      ),
    );
  }
}
