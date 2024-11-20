import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:zahra/custom/zahra_colors.dart';

Widget zahraContainer({
  required Widget mychild,
}) {
  return Container(
    width: double.infinity,
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
    width: double.infinity,
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

Widget zahraOffWhiteContainer({
  required Widget mychild,
}) {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 10,
          spreadRadius: 0,
          offset: Offset(0, -4),
        ),
      ],
      color: Color.fromRGBO(245, 249, 255, 1),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          30,
        ),
      ),
    ),
    child: mychild,
  );
}

Widget zahraPurpleContainer({
  required Widget mychild,
}) {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 10,
          spreadRadius: 0,
          offset: Offset(0, -4),
        ),
      ],
      color: Color.fromRGBO(32, 34, 68, 0.8),
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
                  child: const DottedLine(),
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
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              Text(
                '681 L.E',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
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
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              Text(
                '6 L.E',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
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
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              Text(
                '687 L.E',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
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

Widget orderitems(BuildContext context) {
  return Card(
    elevation: 2,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 10,
        top: 10,
        right: 10,
        bottom: 10,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 20),
            blurRadius: 35,
            color: Color.fromRGBO(0, 0, 0, 0.05),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/noimage.png',
          ),
          SizedBox(
            width: mediaquerywidth(0.03, context),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem',
                  style: GoogleFonts.mulish(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(32, 26, 37, 1),
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.005, context),
                ),
                Text(
                  '\$225.00',
                  style: GoogleFonts.mulish(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(195, 198, 201, 1),
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.005, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Size: US 7',
                        style: GoogleFonts.mulish(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(32, 26, 37, 1),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(238, 241, 244, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: Color.fromRGBO(57, 63, 72, 1),
                          ),
                        ),
                        SizedBox(
                          width: mediaquerywidth(0.015, context),
                        ),
                        Text(
                          '1',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(195, 198, 201, 1),
                          ),
                        ),
                        SizedBox(
                          width: mediaquerywidth(0.015, context),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(238, 241, 244, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Color.fromRGBO(57, 63, 72, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 12,
                  backgroundColor: Color.fromRGBO(238, 241, 244, 1),
                  foregroundColor: Color.fromRGBO(195, 198, 201, 1),
                  child: Icon(
                    Icons.favorite,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget totalbill(BuildContext context) {
  return Card(
    elevation: 2,
    child: Container(
      width: double.infinity,
      height: 151,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(96, 114, 116, 1),
                    ),
                  ),
                  Text(
                    '\$7.99',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(96, 114, 116, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: mediaqueryheight(0.01, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Taxes',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(96, 114, 116, 1),
                    ),
                  ),
                  Text(
                    '\$1.25',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(96, 114, 116, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: mediaqueryheight(0.01, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(96, 114, 116, 1),
                    ),
                  ),
                  Text(
                    '\$3.99',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(96, 114, 116, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
              Text(
                '\$13.23',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget getOvalContainer(double height, double width, Color color) {
  return ClipOval(
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        backgroundBlendMode: BlendMode.softLight,
      ),
    ),
  );
}

Widget getContactUsDetails(
  BuildContext context,
  String path,
  String text,
  String text1,
  String text2,
) {
  return Container(
    width: 165,
    padding: const EdgeInsets.only(
      right: 10,
      left: 10,
      top: 20,
      bottom: 20,
    ),
    decoration: const BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 1),
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(path),
        SizedBox(
          height: mediaqueryheight(0.01, context),
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        SizedBox(
          height: mediaqueryheight(0.01, context),
        ),
        Text(
          text1,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(113, 113, 113, 1),
          ),
        ),
        Text(
          text2,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(113, 113, 113, 1),
          ),
        ),
      ],
    ),
  );
}

Widget getSocialMedia(
  BuildContext context,
  String path,
  String text,
) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
      border: Border.all(
        color: const Color.fromRGBO(168, 168, 168, 1),
        width: 1,
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/$path.svg'),
        SizedBox(
          width: mediaquerywidth(0.015, context),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget getReviews(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(
      20,
    ),
    height: 170,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.08),
          spreadRadius: 0,
          blurRadius: 10,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 24,
          backgroundColor: Colors.black,
        ),
        SizedBox(width: mediaquerywidth(0.02, context)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Heather S. McMullen",
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0,
                      color: const Color.fromRGBO(32, 34, 68, 1),
                    ),
                  ),
                  Container(
                    height: 26,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(232, 241, 255, 1),
                      borderRadius: BorderRadius.circular(13.0),
                      border: Border.all(
                        color: const Color.fromRGBO(77, 129, 229, 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star,
                            color: Color(0xffff9c07), size: 16.0),
                        const SizedBox(width: 4.0),
                        Text(
                          "4.2",
                          style: GoogleFonts.jost(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(32, 34, 68, 1),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediaquerywidth(0.02, context)),
              Text(
                "The Course is Very Good dolor sit amet, con sect tur adipiscing elit. Naturales divitias dixit parab les esse..",
                style: GoogleFonts.mulish(
                  fontSize: 13.0,
                  color: const Color.fromRGBO(84, 84, 84, 1),
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 3,
              ),
              SizedBox(
                height: mediaqueryheight(0.02, context),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(221, 46, 68, 1),
                    size: 20.0,
                  ),
                  SizedBox(
                    width: mediaquerywidth(0.02, context),
                  ),
                  Text(
                    "760",
                    style: GoogleFonts.mulish(
                      color: const Color.fromRGBO(32, 34, 68, 1),
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    width: mediaquerywidth(0.07, context),
                  ),
                  Text(
                    "2 Weeks Agos",
                    style: GoogleFonts.mulish(
                      color: const Color.fromRGBO(32, 34, 68, 1),
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget getGraphicDesign(BuildContext context) {
  return Card(
    elevation: 0,
    child: Container(
      height: 134,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.08),
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
          ),
          SizedBox(
            width: mediaquerywidth(0.03, context),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Graphic Design',
                  style: GoogleFonts.mulish(
                    color: const Color.fromRGBO(255, 107, 0, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.01, context),
                ),
                Text(
                  'Setup your Graphic Desig..',
                  style: GoogleFonts.jost(
                    color: const Color.fromRGBO(32, 34, 68, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget getReviewButton(
  void Function() ontap,
  Widget text,
  BuildContext context,
) {
  return Container(
    height: 65,
    width: MediaQuery.of(context).size.width - mediaquerywidth(0.15, context),
    decoration: BoxDecoration(
      color: bgButtonColor,
      boxShadow: const [
        BoxShadow(
          offset: Offset(0, 4),
          blurRadius: 4,
          spreadRadius: 0,
          color: Color.fromRGBO(0, 0, 0, 0.25),
        )
      ],
      borderRadius: const BorderRadius.all(
        Radius.circular(24),
      ),
    ),
    child: ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgButtonColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              24,
            ),
          ),
        ),
      ),
      child: text,
    ),
  );
}

Widget getAddUser(
  void Function() ontap,
  BuildContext context,
) {
  return Container(
    height: 54,
    width: MediaQuery.of(context).size.width - mediaquerywidth(0.5, context),
    decoration: BoxDecoration(
      color: bgButtonColor,
      boxShadow: const [
        BoxShadow(
          offset: Offset(0, 4),
          blurRadius: 15,
          spreadRadius: 0,
          color: Color.fromRGBO(0, 0, 0, 0.08),
        )
      ],
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgButtonColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
      ),
      child: Text(
        'اضافة',
        style: GoogleFonts.cairo(
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(249, 243, 228, 1),
        ),
      ),
    ),
  );
}

Widget getReturn(
  void Function() ontap,
  BuildContext context,
) {
  return Container(
    height: 54,
    width: MediaQuery.of(context).size.width - mediaquerywidth(0.5, context),
    decoration: BoxDecoration(
      color: bgButtonColor,
      boxShadow: const [
        BoxShadow(
          offset: Offset(0, 4),
          blurRadius: 15,
          spreadRadius: 0,
          color: Color.fromRGBO(0, 0, 0, 0.08),
        )
      ],
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgButtonColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
      ),
      child: Text(
        'عوده',
        style: GoogleFonts.cairo(
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(249, 243, 228, 1),
        ),
      ),
    ),
  );
}
