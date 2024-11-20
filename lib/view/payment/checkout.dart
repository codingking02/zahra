import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  // Create a GlobalKey for the Scaffold
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _creditNameController = TextEditingController();
  final TextEditingController _creditNumberController = TextEditingController();
  final TextEditingController _creditExpiryDateController =
      TextEditingController();
  final TextEditingController _creditCvvController = TextEditingController();

  var maskFormatterCreditNumber = MaskTextInputFormatter(
    mask: '#### #### #### ####',
    filter: {"#": RegExp(r'[0-9]')},
  );
  var maskFormatterExpiryDate = MaskTextInputFormatter(
    mask: '##/##',
    filter: {"#": RegExp(r'[0-9]')},
  );
  var maskFormatterCvv = MaskTextInputFormatter(
    mask: '###',
    filter: {"#": RegExp(r'[0-9]')},
  );
  String name = '';
  String number = '';
  void onFieldSubmitted() {
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    _creditNameController.dispose();
    _creditCvvController.dispose();
    _creditExpiryDateController.dispose();
    _creditNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return zahraWhiteContainer(
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
                'Checkout',
                style: GoogleFonts.inter(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(96, 114, 116, 1),
                ),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.03, context),
            ),
            SizedBox(
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: SvgPicture.asset(
                      'assets/bluecredit.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: -80,
                    left: -20,
                    child: getOvalContainer(
                      190,
                      141,
                      const Color.fromRGBO(175, 153, 153, 1),
                    ),
                  ),
                  Positioned(
                    bottom: -65,
                    left: 20,
                    child: Transform.rotate(
                      angle: 110 * (3.141592653589793 / 180),
                      child: getOvalContainer(
                        165,
                        114,
                        const Color.fromRGBO(128, 135, 149, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -60,
                    right: 30,
                    child: Transform.rotate(
                      angle: -110 * (3.141592653589793 / 180),
                      child: getOvalContainer(
                        165,
                        95,
                        const Color.fromRGBO(155, 151, 151, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: -80,
                    child: Transform.rotate(
                      angle: 200 * (3.141592653589793 / 180),
                      child: getOvalContainer(
                        101,
                        150,
                        const Color.fromRGBO(155, 151, 151, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: SvgPicture.asset(
                      'assets/mastercard.svg',
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 20,
                    child: Text(
                      number,
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(226, 226, 226, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      name,
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(226, 226, 226, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.03, context),
            ),
            getscreentext('Card information'),
            SizedBox(
              height: mediaqueryheight(0.02, context),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getscreentext('Name'),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      creditCardField(
                        _creditNameController,
                        onFieldSubmitted,
                        'John Doe',
                        TextInputType.name,
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[a-zA-Z\s]+$')),
                        MaskTextInputFormatter(),
                        (value) {
                          setState(
                            () {
                              number = value!;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      getscreentext('Card Number'),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      creditCardFieldIcon(
                        _creditNumberController,
                        onFieldSubmitted,
                        '1234 5678 9123 4567',
                        TextInputType.number,
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        maskFormatterCreditNumber,
                        (value) {
                          setState(
                            () {
                              name = value!;
                            },
                          );
                        },
                        SvgPicture.asset(
                          'assets/mastercard.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getscreentext('Expiry Date'),
                                SizedBox(
                                  height: mediaqueryheight(0.02, context),
                                ),
                                creditCardField(
                                  _creditExpiryDateController,
                                  onFieldSubmitted,
                                  '09/24',
                                  TextInputType.number,
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'),
                                  ),
                                  maskFormatterExpiryDate,
                                  (value) {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: mediaquerywidth(0.03, context),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getscreentext('CVV'),
                                SizedBox(
                                  height: mediaqueryheight(0.02, context),
                                ),
                                creditCardFieldIcon(
                                  _creditCvvController,
                                  onFieldSubmitted,
                                  '156',
                                  TextInputType.number,
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'),
                                  ),
                                  maskFormatterCvv,
                                  (value) {},
                                  Tooltip(
                                    message:
                                        'Enter the last 3 digits\non the back of your card',
                                    preferBelow: false,
                                    verticalOffset: 20,

                                    decoration: BoxDecoration(
                                      color: Colors
                                          .black87, // Tooltip background color
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ), // Rounded corners
                                    ),
                                    textStyle: const TextStyle(
                                      color: Colors.white, // Text color
                                      fontSize: 14, // Font size
                                      fontWeight:
                                          FontWeight.w500, // Font weight
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 15,
                                    ), // Padding around the text
                                    child: SvgPicture.asset(
                                      'assets/cvv.svg',
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      zahraPaymentbutton(
                        context,
                        'Pay Now',
                        () {},
                      ),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getscreentext(String text) {
  return Text(
    text,
    style: GoogleFonts.inter(
      color: const Color.fromRGBO(96, 114, 116, 1),
      fontWeight: FontWeight.w600,
      fontSize: 13,
    ),
  );
}
