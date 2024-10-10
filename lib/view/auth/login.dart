// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/view/drawer_screen/maindrawer.dart';
import 'package:zahra/view/auth/register.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_colors.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/custom/zahra_login.dart';
import 'package:zahra/custom/zahra_texts.dart';

class Loginless extends StatelessWidget {
  const Loginless({super.key});

  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool iftapped = true;

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    _nameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _submit() {
    // Unfocus all fields when submitting
    _nameFocusNode.unfocus();
    _passwordFocusNode.unfocus();
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
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: backgroundColors,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: mediaqueryheight(0.05, context),
                  ),
                  Image.asset(
                    "assets/zahrasmalllogo.png",
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.02, context),
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
                                height: mediaqueryheight(0.05, context),
                              ),
                              Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    zahratexts(
                                      'أسم المستخدم',
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight(0.02, context),
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
                                      height: mediaqueryheight(0.02, context),
                                    ),
                                    zahratexts(
                                      'كلمة المرور',
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight(0.02, context),
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
                              rowWidgets(
                                context,
                              ),
                              SizedBox(
                                height: mediaqueryheight(0.10, context),
                              ),
                              zahraButton(
                                context,
                                const MainDrawer(),
                                SvgPicture.asset(
                                  'assets/login.svg',
                                ),
                                _submit,
                              ),
                              SizedBox(
                                height: mediaqueryheight(0.02, context),
                              ),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Register(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'أنشاء حساب جديد',
                                    style: GoogleFonts.cairo(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(
                                        30,
                                        30,
                                        30,
                                        1,
                                      ),
                                      decoration: TextDecoration.underline,
                                    ),
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
      ),
    );
  }
}
