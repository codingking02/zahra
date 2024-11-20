// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/view/auth/location.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/custom/zahra_texts.dart';

class Registeress extends StatelessWidget {
  const Registeress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Register();
  }
}

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phonenumbercontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool iftapped = false;

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    _emailcontroller.dispose();
    _phonenumbercontroller.dispose();
    _confirmpasswordcontroller.dispose();

    super.dispose();
  }

  void _submit() {
    // Unfocus all fields when submitting
    String name = _nameController.text;
    String password = _passwordController.text;

    // Print the input values
  }

  void _onFieldSubmitted() {
    // Unfocus when the down arrow (Next) is pressed
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: backgroundColors,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/zahrasmalllogo.png",
                ),
                Expanded(
                  child: zahraContainer(
                    mychild: Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        horizontal: mediaquerywidth(0.05, context),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: mediaqueryheight(0.02, context),
                            ),
                            Center(
                              child: Text(
                                'أنشاء حساب جديد',
                                style: GoogleFonts.cairo(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(96, 114, 116, 1),
                                ),
                              ),
                            ),
                            SafeArea(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Form(
                                      key: _formKey,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          zahratexts(
                                            'أسم المستخدم',
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          textFormField(
                                            _nameController,
                                            _onFieldSubmitted,
                                            'أسم المستخدم / رقم الهاتف',
                                            TextInputType.name,
                                            FilteringTextInputFormatter
                                                .singleLineFormatter,
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          zahratexts(
                                            'رقم الهاتف',
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          textFormField(
                                            _phonenumbercontroller,
                                            _onFieldSubmitted,
                                            '01000000000000',
                                            TextInputType.phone,
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          zahratexts(
                                            'البريد الإلكتروني',
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          textFormField(
                                            _emailcontroller,
                                            _onFieldSubmitted,
                                            'diijir_ihsfglp@email.com',
                                            TextInputType.emailAddress,
                                            FilteringTextInputFormatter
                                                .singleLineFormatter,
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          zahratexts(
                                            'كلمة المرور',
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          passwordtextFormField(
                                            _passwordController,
                                            _onFieldSubmitted,
                                            '***************',
                                            Image.asset(
                                              'assets/eye.png',
                                            ),
                                            () {
                                              setState(() {
                                                iftapped = !iftapped;
                                              });
                                            },
                                            iftapped,
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          zahratexts(
                                            'تأكيد كلمة المرور',
                                          ),
                                          SizedBox(
                                            height:
                                                mediaqueryheight(0.01, context),
                                          ),
                                          passwordtextFormField(
                                            _passwordController,
                                            _onFieldSubmitted,
                                            '***************',
                                            Image.asset(
                                              'assets/eye.png',
                                            ),
                                            () {
                                              setState(() {
                                                iftapped = !iftapped;
                                              });
                                            },
                                            iftapped,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight(0.02, context),
                                    ),
                                    zahraButton(
                                      context,
                                      const Location(),
                                      SvgPicture.asset(
                                        'assets/register.svg',
                                      ),
                                      _submit,
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight(0.02, context),
                                    ),
                                    zharabackbutton(
                                      context,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
