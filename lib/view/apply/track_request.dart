// ignore_for_file: unused_local_variable, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/custom/zahra_texts.dart';

class TrackRequest extends StatefulWidget {
  const TrackRequest({super.key});
  @override
  State<TrackRequest> createState() => _TrackRequestState();
}

class _TrackRequestState extends State<TrackRequest> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phonenumbercontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _orderisreadycontroller = TextEditingController();
  final TextEditingController _orderisonwaycontroller = TextEditingController();
  final TextEditingController _requestnumbercontroller =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phonenumbercontroller.dispose();
    _emailcontroller.dispose();
    _orderisreadycontroller.dispose();
    _orderisonwaycontroller.dispose();
    _requestnumbercontroller.dispose();

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
                  'تابع طلبك',
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
                      zahratexts(
                        'أسم مقدم الخدمة',
                      ),
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
                      zahratexts(
                        'رقم الطلب',
                      ),
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
                      zahratexts(
                        'البريد الإلكتروني',
                      ),
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
                      zahratexts(
                        'هذا الطلب تم حجزة',
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      trackrequestfield(
                        _requestnumbercontroller,
                        _onFieldSubmitted,
                        Image.asset(
                          'assets/correct.png',
                        ),
                        Image.asset(
                          'assets/reserved.png',
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('هذا الطلب تم تجهيزة'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      trackrequestfield(
                        _orderisreadycontroller,
                        _onFieldSubmitted,
                        Image.asset(
                          'assets/correct.png',
                        ),
                        Image.asset(
                          'assets/orderisready.png',
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts('هذا الطلب تم شحنة'),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      trackrequestfield(
                        _orderisonwaycontroller,
                        _onFieldSubmitted,
                        Image.asset(
                          'assets/correct.png',
                        ),
                        Image.asset(
                          'assets/onway.png',
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      zahratexts(
                        'هذا الطلب في الطريق اليك',
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
                          context,
                        ),
                      ),
                      trackrequestfield(
                        _orderisonwaycontroller,
                        _onFieldSubmitted,
                        Image.asset(
                          'assets/correct1.png',
                        ),
                        Image.asset(
                          'assets/delivered.png',
                        ),
                      ),
                      SizedBox(
                        height: mediaqueryheight(
                          0.01,
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
