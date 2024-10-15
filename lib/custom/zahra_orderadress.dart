import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderAddress extends StatefulWidget {
  const OrderAddress({super.key});
  @override
  State<OrderAddress> createState() => _OrderAddressState();
}

class _OrderAddressState extends State<OrderAddress> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: 20,
          right: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(153, 128, 172, 0.5),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded; // Toggle expansion state
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(96, 114, 116, 1),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'TD53, Kaya...',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          _isExpanded
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          color: const Color.fromRGBO(96, 114, 116, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Container(
                height: _isExpanded ? null : 0,
                padding: const EdgeInsets.all(10.0),
                child: _isExpanded
                    ? Text(
                        'TD53, Kaya, City Name, Country', // Complete address
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      )
                    : null, // Show null when collapsed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
