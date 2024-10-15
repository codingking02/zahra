import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:dotted_line/dotted_line.dart';

Widget zahraContainer({
  required Widget mychild,
}) {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 10,
          spreadRadius: 0,
          offset: Offset(0, -4),
        ),
      ],
      color: Color.fromRGBO(249, 243, 228, 1),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          30,
        ),
      ),
    ),
    child: mychild,
  );
}

Widget zahraWhiteContainer({
  required Widget mychild,
}) {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 10,
          spreadRadius: 0,
          offset: Offset(0, -4),
        ),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          30,
        ),
      ),
    ),
    child: mychild,
  );
}

Widget getcontainer(BuildContext context, String text) {
  return Container(
    height: mediaqueryheight(
      0.2,
      context,
    ),
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color.fromRGBO(251, 251, 251, 1),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.08),
          offset: Offset(0, 4),
          blurRadius: 10,
          spreadRadius: 0,
        )
      ],
    ),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.cairo(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(30, 30, 30, 1),
        ),
      ),
    ),
  );
}

Widget orderDetails(BuildContext context) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Card(
        elevation: 2,
        child: Container(
          width: double.infinity,
          height: mediaqueryheight(0.12, context),
          padding: const EdgeInsets.all(
            10,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/burger.png',
              ),
              SizedBox(
                width: mediaquerywidth(0.02, context),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Men's Joyride",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(30, 30, 30, 1),
                          ),
                        ),
                        Text(
                          "Run Flyknit shoes",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: const Color.fromRGBO(30, 30, 30, 1),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "681 LE",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(57, 57, 57, 1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "1",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(57, 57, 57, 1),
                              ),
                            ),
                            SizedBox(
                              width: mediaqueryheight(0.005, context),
                            ),
                            Image.asset(
                              'assets/upanddown.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Close Icon (Remove Button)
      Positioned(
        top: -5,
        right: -5,
        child: GestureDetector(
          onTap: () {
            // Handle the remove button action
          },
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.close,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget addpromocode(BuildContext context) {
  return Card(
    elevation: 2,
    child: Container(
      width: double.infinity,
      height: mediaqueryheight(0.055, context),
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Offers',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add code',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromRGBO(153, 128, 172, 0.5)),
              ),
              Center(
                child: SizedBox(
                  width: mediaquerywidth(0.21, context),
                  child: DottedLine(),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderSummary(BuildContext context) {
  return Card(
    elevation: 2,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Summary',
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(30, 30, 30, 1)),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              Text(
                '681 L.E',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              Text(
                '6 L.E',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              Text(
                '687 L.E',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderaddress(BuildContext context) {
  return Card(
    elevation: 2,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(153, 128, 172, 0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      ),
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(96, 114, 116, 1),
              ),
            ),
            Text(
              'TD53, Kaya...',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(96, 114, 116, 1),
              ),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'TD53, Kaya, City Name, Country', // Complete address
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
