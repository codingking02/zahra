// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
      child: zahraWhiteContainer(
        mychild: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: mediaquerywidth(0.1, context),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mediaqueryheight(0.05, context),
              ),
              Center(
                child: Text(
                  'PAYMENT METHOD',
                  style: GoogleFonts.inter(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(96, 114, 116, 1),
                  ),
                ),
              ),
              SizedBox(
                height: mediaqueryheight(0.04, context),
              ),
              Text(
                'Your Cart',
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              SizedBox(
                height: mediaqueryheight(0.04, context),
              ),
              totalbill(context),
              SizedBox(
                height: mediaqueryheight(0.03, context),
              ),
              Text(
                'Select Your Pyament Method',
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      zahraPaymentMethod(
                        context,
                        'assets/credit.svg',
                        'Credit Card',
                        bgButtonColor,
                        () {},
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      zahraPaymentMethod(
                        context,
                        'assets/paypal.svg',
                        'Credit Card',
                        const Color.fromRGBO(96, 114, 116, 1),
                        () {},
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      zahraPaymentMethod(
                        context,
                        'assets/apple.svg',
                        'Credit Card',
                        const Color.fromRGBO(96, 114, 116, 1),
                        () {},
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      zahraPaymentMethod(
                        context,
                        'assets/google.svg',
                        'Credit Card',
                        const Color.fromRGBO(96, 114, 116, 1),
                        () {},
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      zahraPaymentbutton(
                        context,
                        'Continue',
                        () {},
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.03, context),
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
