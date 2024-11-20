import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zahra/view/auth/login.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 243, 228, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsetsDirectional.all(0),
            width: double.infinity,
            height: mediaqueryheight(0.85, context),
            child: Image.asset(
              "assets/splashscreen.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: mediaqueryheight(0.05, context),
          ),
          Container(
            margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 48,
            ),
            child: zahraButton(
              context,
              const Login(),
              SvgPicture.asset(
                'assets/starttext.svg',
              ),
              () {},
            ),
          ),
        ],
      ),
    );
  }
}
