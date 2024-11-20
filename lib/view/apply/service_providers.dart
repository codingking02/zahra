// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/custom/zahra_texts.dart';
import 'package:zahra/view/auth/location.dart';

class ServiceProviders extends StatefulWidget {
  const ServiceProviders({super.key});
  @override
  State<ServiceProviders> createState() => _ServiceProvidersState();
}

class _ServiceProvidersState extends State<ServiceProviders> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phonenumbercontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _addresscontroller = TextEditingController();
  final TextEditingController _timeschedulecontroller = TextEditingController();
  final TextEditingController _servicetypecontroller = TextEditingController();
  final TextEditingController _overviewcontroller = TextEditingController();
  final TextEditingController _addpicturecontroller = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phonenumbercontroller.dispose();
    _emailcontroller.dispose();
    _addresscontroller.dispose();
    _timeschedulecontroller.dispose();
    _servicetypecontroller.dispose();
    _overviewcontroller.dispose();
    _addpicturecontroller.dispose();

    super.dispose();
  }

  void _submit() {
    // Unfocus all fields when submitting
    String name = _nameController.text;
    // Print the input values
  }

  void _onFieldSubmitted() {
    // Unfocus when the down arrow (Next) is pressed
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return zahraContainer(
      mychild: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: mediaquerywidth(0.05, context),
        ),
        child: Column(
          children: [
            SizedBox(
              height: mediaqueryheight(
                0.03,
                context,
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.08, context),
              child: Center(
                child: Text(
                  'أضافة مقدمي الخدمات',
                  style: GoogleFonts.cairo(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(96, 114, 116, 1),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('أسم مقدم الخدمة'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      textFormField(
                        _nameController,
                        _onFieldSubmitted,
                        'أسم المستخدم / رقم الهاتف',
                        TextInputType.name,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('رقم الهاتف'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      textFormField(
                        _phonenumbercontroller,
                        _onFieldSubmitted,
                        '01000000000000',
                        TextInputType.number,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('البريد الإلكتروني'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      textFormField(
                        _emailcontroller,
                        _onFieldSubmitted,
                        'diijir_ihsfglp@email.com',
                        TextInputType.emailAddress,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('عنوان تقديم الخدمة'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      textFormField(
                        _addresscontroller,
                        _onFieldSubmitted,
                        'اضافه العنوان بالتفصيل ',
                        TextInputType.name,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('مواعيد تقديم الخدمة'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      textFormField(
                        _timeschedulecontroller,
                        _onFieldSubmitted,
                        'مواعيد العمل : من الساعه 10 ص الي الساعه 10 م',
                        TextInputType.name,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('نوع الخدمات المقدمة'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      textFormField(
                        _servicetypecontroller,
                        _onFieldSubmitted,
                        'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ',
                        TextInputType.name,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('نبذة عن الخدمات المقدمة'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      textFormField(
                        _overviewcontroller,
                        _onFieldSubmitted,
                        'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ',
                        TextInputType.name,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('اضافة صور للخدمات المقدمة'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      textFormField(
                        _addpicturecontroller,
                        _onFieldSubmitted,
                        'diijir_ihsfglp@email.com',
                        TextInputType.name,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.03,
                          context,
                        ),
                      ),
                      zahraButton(
                        context,
                        const Location(),
                        SvgPicture.asset(
                          'assets/confirm.svg',
                        ),
                        _submit,
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.03,
                          context,
                        ),
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
