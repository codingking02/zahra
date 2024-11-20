import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_container.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return zahraWhiteContainer(
      mychild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/successful.png',
          ),
          Text(
            'Payment Successful',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w800,
              color: const Color.fromRGBO(30, 185, 92, 1),
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
