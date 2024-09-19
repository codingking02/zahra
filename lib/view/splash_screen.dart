import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zahra/view/login.dart';
import 'package:zahra/widgets/zahra_boxes.dart';
import 'package:zahra/widgets/zahra_buttons.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsetsDirectional.all(0),
            width: double.infinity,
            height: mediaqueryheight(0.85, context),
            child: Image.asset(
              "assets/splashimage.png",
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
            ),
          ),
        ],
      ),
    );
  }
}
