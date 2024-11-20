// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ReviewsState();
}

class _ReviewsState extends State<ForgotPassword> {
  var seconds = 59;
  final _pinFocusNode = FocusNode();
  final TextEditingController _pincontroller = TextEditingController();
  static final defaultPinTheme = PinTheme(
    width: 75,
    height: 60,
    textStyle: GoogleFonts.mulish(
      fontSize: 22,
      color: const Color.fromRGBO(80, 80, 80, 1),
      fontWeight: FontWeight.w800,
    ),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          offset: Offset(0, 2),
          blurRadius: 10,
          spreadRadius: 0,
          color: Color.fromRGBO(0, 0, 0, 0.1),
        )
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
    ),
  );

  final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    color: Colors.white,
    borderRadius: BorderRadius.circular(14),
    border: Border.all(
      width: 2,
      color: const Color.fromRGBO(180, 189, 196, 0.4),
    ),
  );

  String hideHalfStringWithStars(String text) {
    final int length = text.length;
    final int halfLength = (length / 2).ceil();
    final String visibleText = text.substring(0, halfLength);
    final String hiddenText = '*' * (length - halfLength);
    return '$visibleText$hiddenText';
  }

  late Timer _timer;
  // void _startTimer() {
  //   if (seconds > 0) {
  //     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //       setState(() {
  //         seconds--;
  //       });

  //       if (seconds == 0) {
  //         _startTimer(); // Stop the timer when seconds reach 0
  //         seconds = 59; // Reset timer for next usage if needed
  //       }
  //     });
  //   }
  // }
  final int _otpLength = 4;
  String inputText = '';

  void _onKeyboardTap(String value) {
    if (inputText.length < _otpLength) {
      setState(() {
        inputText += value;
        _pincontroller.text = inputText;
      });
    }
  }

  void _onBackspace() {
    if (inputText.isNotEmpty) {
      setState(() {
        inputText = inputText.substring(0, inputText.length - 1);
        _pincontroller.text = inputText;
      });
    }
  }

  Widget _buildKey(String label) {
    return GestureDetector(
      onTap: () => _onKeyboardTap(label),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          label,
          style: GoogleFonts.mulish(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: const Color.fromRGBO(80, 80, 80, 1),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    _pinFocusNode.dispose();
    _pincontroller.dispose();
  }

  @override
  void initState() {
    // _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _pinFocusNode.unfocus();

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
                  onPressed: () {
                    final provider =
                        Provider.of<NavigationProvider>(context, listen: false);
                    provider.selectScreen(
                      const HomeScreen2(),
                    );
                  },
                  label: Text(
                    'نسيت كلمة المرور',
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
              Center(
                child: Text(
                  'Cod Has Been Sent To (+20) ${hideHalfStringWithStars('01003222426')}',
                  style: GoogleFonts.mulish(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(106, 121, 138, 1),
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: mediaquerywidth(0.04, context),
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
                  controller: _pincontroller,
                  focusNode: _pinFocusNode,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: defaultPinTheme,
                  disabledPinTheme: defaultPinTheme,
                  obscureText: true,
                  obscuringCharacter: '*',
                  onSubmitted: (value) {
                    _pinFocusNode.unfocus();
                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                  },
                  length: 4,
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
              Expanded(
                child: Column(
                  children: [
                    Center(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Resend Code in ',
                              style: GoogleFonts.mulish(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(84, 84, 84, 1),
                              ),
                            ),
                            TextSpan(
                              text: '$seconds',
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(9, 97, 245, 1),
                              ),
                            ),
                            TextSpan(
                              text: 's',
                              style: GoogleFonts.mulish(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(84, 84, 84, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.02, context),
                    ),
                    Center(
                      child: getCheckNumber(
                        () {},
                        context,
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        childAspectRatio: 1.5,
                        crossAxisCount: 3, // Adjust based on Figma layout
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        children: [
                          _buildKey("1"),
                          _buildKey("2"),
                          _buildKey("3"),
                          _buildKey("4"),
                          _buildKey("5"),
                          _buildKey("6"),
                          _buildKey("7"),
                          _buildKey("8"),
                          _buildKey("9"),
                          _buildKey("*"),
                          _buildKey("0"),
                          GestureDetector(
                            onTap: _onBackspace,
                            child: const Icon(
                              Icons.backspace_outlined,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getCheckNumber(
  void Function() ontap,
  BuildContext context,
) {
  return InkWell(
    onTap: () {},
    child: Stack(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 8,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: ElevatedButton(
            onPressed: ontap,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              backgroundColor: const Color.fromRGBO(9, 97, 245, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
            child: Text(
              'تحقق',
              style: GoogleFonts.notoSansArabic(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 10,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              'assets/arrowright.svg',
            ),
          ),
        ),
      ],
    ),
  );
}
