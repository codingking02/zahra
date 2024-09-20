import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/view/home_screen.dart';
import 'package:zahra/widgets/zahra_boxes.dart';
import 'package:zahra/widgets/zahra_buttons.dart';
import 'package:zahra/widgets/zahra_colors.dart';
import 'package:zahra/widgets/zahra_container.dart';
import 'package:zahra/widgets/zahra_fields.dart';
import 'package:zahra/widgets/zahra_login.dart';
import 'package:zahra/widgets/zahra_texts.dart';

class Registeress extends StatelessWidget {
  const Registeress({super.key});

  @override
  Widget build(BuildContext context) {
    return Register();
  }
}

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool iftapped = false;

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
                zahraContainer(
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
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                zahratexts(
                                  'أسم المستخدم',
                                ),
                                textFormField(
                                  _nameController,
                                  _onFieldSubmitted,
                                  'أسم المستخدم / رقم الهاتف',
                                  TextInputType.name,
                                  FilteringTextInputFormatter
                                      .singleLineFormatter,
                                ),
                                zahratexts(
                                  'أسم المستخدم',
                                ),
                                textFormField(
                                  _nameController,
                                  _onFieldSubmitted,
                                  'أسم المستخدم / رقم الهاتف',
                                  TextInputType.name,
                                  FilteringTextInputFormatter
                                      .singleLineFormatter,
                                ),
                                zahratexts(
                                  'كلمة المرور',
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
                          zahraButton(
                            context,
                            HomeScreen(),
                            SvgPicture.asset(
                              'assets/login.svg',
                            ),
                            _submit,
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
        ),
      ),
    );
  }
}
