// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class CheckPhoneNumber extends StatefulWidget {
  const CheckPhoneNumber({super.key});

  @override
  State<CheckPhoneNumber> createState() => _ReviewsState();
}

class _ReviewsState extends State<CheckPhoneNumber> {
  final _numberController = TextEditingController(text: '+20');
  final _numberFocusNode = FocusNode();
  final _pinFocusNode = FocusNode();
  TextEditingController pincontroller = TextEditingController();
  static final defaultPinTheme = PinTheme(
    width: 49,
    height: 58,
    textStyle: GoogleFonts.inter(
      fontSize: 21,
      color: const Color.fromRGBO(41, 45, 50, 1),
      fontWeight: FontWeight.w500,
    ),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(239, 242, 245, 1),
      borderRadius: BorderRadius.circular(14),
    ),
  );

  final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    color: const Color.fromRGBO(239, 242, 245, 1),
    borderRadius: BorderRadius.circular(14),
  );

  final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration!.copyWith(
      color: const Color.fromRGBO(239, 242, 245, 1),
    ),
  );
  final disaledpinttheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration!.copyWith(
      color: const Color.fromRGBO(239, 242, 245, 1),
    ),
  );
  String hideHalfStringWithStars(String text) {
    final int length = text.length;
    final int halfLength = (length / 2).ceil();
    final String visibleText = text.substring(0, halfLength);
    final String hiddenText = '*' * (length - halfLength);
    return '$visibleText$hiddenText';
  }

  @override
  void dispose() {
    super.dispose();
    _numberController.dispose();
    _numberFocusNode.dispose();
    _pinFocusNode.dispose();
    pincontroller.dispose();
  }

  @override
  void initState() {
    _numberController.addListener(() {
      if (!_numberController.text.startsWith('+20 ')) {
        _numberController.text = '+20 ';
        _numberController.selection = TextSelection.fromPosition(
          TextPosition(offset: _numberController.text.length),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _pinFocusNode.unfocus();
        _numberFocusNode.unfocus();
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      child: zahraWhiteContainer(
        mychild: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: mediaquerywidth(0.05, context),
          ),
          child: SingleChildScrollView(
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
                    'Back',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color.fromRGBO(41, 45, 50, 1),
                    ),
                  ),
                  iconAlignment: IconAlignment.start,
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 25,
                    color: Color.fromRGBO(41, 45, 50, 1),
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.03, context),
                ),
                Center(
                  child: Text(
                    'التحقق من رقم الهاتف',
                    style: GoogleFonts.notoSansArabic(
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                      color: const Color.fromRGBO(41, 45, 50, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.01, context),
                ),
                Text(
                  'We have sent you a 6 digit code.\nPlease enter here to verify your number.',
                  style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(106, 121, 138, 1),
                    height: 1.5,
                  ),
                  textDirection: TextDirection.ltr,
                ),
                Row(
                  children: [
                    Container(
                      clipBehavior: Clip.none,
                      height: 39,
                      width: 171,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(239, 242, 245, 1),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: TextFormField(
                        focusNode: _numberFocusNode,
                        onFieldSubmitted: (value) {
                          _numberFocusNode.unfocus();
                          SystemChannels.textInput
                              .invokeMethod('TextInput.hide');
                        },
                        clipBehavior: Clip.none,
                        controller: _numberController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: '',
                          hintText: '+90 169 916 9564',
                          hintStyle: GoogleFonts.inter(
                            color: const Color.fromRGBO(70, 80, 93, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                          ),
                        ),
                        cursorColor: const Color.fromRGBO(70, 80, 93, 1),
                        maxLines: 1,
                        maxLength: 14,
                        cursorHeight: 20,
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(70, 80, 93, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: mediaquerywidth(0.04, context),
                    ),
                    InkWell(
                      onTap: () {
                        _numberController.clear();
                        _numberFocusNode.requestFocus();
                      },
                      child: SvgPicture.asset('assets/editnumber.svg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaqueryheight(0.05, context),
                ),
                Center(
                  child: Pinput(
                    separatorBuilder: (index) {
                      return SizedBox(
                        width: mediaquerywidth(0.04, context),
                      );
                    },
                    keyboardType: TextInputType.number,
                    controller: pincontroller,
                    focusNode: _pinFocusNode,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    disabledPinTheme: disaledpinttheme,
                    onSubmitted: (value) {
                      _pinFocusNode.unfocus();
                      SystemChannels.textInput.invokeMethod('TextInput.hide');
                    },
                    length: 6,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    validator: (s) {
                      return null;
                    },
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) {},
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.03, context),
                ),
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Didn’t Receive Code?',
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(106, 121, 138, 1)),
                        ),
                        TextSpan(
                          text: 'Get a New one',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(244, 115, 158, 1),
                            decoration: TextDecoration.underline,
                            decorationColor:
                                const Color.fromRGBO(244, 115, 158, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaqueryheight(0.03, context),
                ),
                Center(
                  child: getCheckNumber(() {}, context, 'تحقق'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
