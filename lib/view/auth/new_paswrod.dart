// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class NewPaswrod extends StatefulWidget {
  const NewPaswrod({super.key});

  @override
  State<NewPaswrod> createState() => _ReviewsState();
}

class _ReviewsState extends State<NewPaswrod> {
  final _passwordController = TextEditingController();
  final _confrimPassword = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confrimPassword.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      child: zahraOffWhiteContainer(
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    final provider =
                        Provider.of<NavigationProvider>(context, listen: false);
                    provider.selectScreen(
                      const HomeScreen2(),
                    );
                  },
                  label: Text(
                    'انشاء كلمة سر جديدة',
                    style: GoogleFonts.notoSansArabic(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: const Color.fromRGBO(32, 34, 68, 1),
                    ),
                  ),
                  iconAlignment: IconAlignment.start,
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                    color: Color.fromRGBO(32, 34, 68, 1),
                  ),
                ),
              ),
              SizedBox(
                height: mediaqueryheight(0.25, context),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'انشاء كلمة سر جديدة',
                        style: GoogleFonts.notoSansArabic(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: const Color.fromRGBO(32, 34, 68, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.03, context),
                    ),
                    getNewPassword(
                      _passwordController,
                      20,
                      FilteringTextInputFormatter.singleLineFormatter,
                      'Password',
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.03, context),
                    ),
                    getNewPassword(
                      _confrimPassword,
                      20,
                      FilteringTextInputFormatter.singleLineFormatter,
                      'Confrim Password',
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.05, context),
                    ),
                    Center(
                      child: getCheckNumber(
                        () {},
                        context,
                        'استمرار',
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.01, context),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
