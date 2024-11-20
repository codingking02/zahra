import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';

Widget textFormField(
  TextEditingController controller,
  void Function() onFieldSubmitted,
  String hintText,
  TextInputType textInputType,
  TextInputFormatter textInputFormatter,
) {
  return TextFormField(
    onFieldSubmitted: (value) => onFieldSubmitted,
    controller: controller,
    keyboardType: textInputType,
    textAlign: TextAlign.right,
    textInputAction: TextInputAction.done,
    cursorColor: const Color.fromRGBO(222, 208, 182, 1),
    enableSuggestions: true,
    inputFormatters: [
      textInputFormatter,
    ],
    style: GoogleFonts.cairo(
      color: const Color.fromRGBO(30, 30, 30, 0.5),
      decorationThickness: 0,
    ),
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      hintText: hintText,
      hintStyle: GoogleFonts.cairo(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: const Color.fromRGBO(
          30,
          30,
          30,
          0.5,
        ),
      ),
      fillColor: const Color.fromRGBO(178, 165, 155, 0.2),
      filled: true,
      border: InputBorder.none,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
    ),
  );
}

Widget passwordtextFormField(
  TextEditingController controller,
  void Function() onFieldSubmitted,
  String hintText,
  Widget prefixicon,
  void Function() ontap,
  bool iftapped,
) {
  return TextFormField(
    onFieldSubmitted: (value) => onFieldSubmitted,
    controller: controller,
    keyboardType: TextInputType.text,
    textAlign: TextAlign.right,
    textInputAction: TextInputAction.done,
    cursorColor: const Color.fromRGBO(222, 208, 182, 1),
    enableSuggestions: true,
    style: GoogleFonts.cairo(
      color: const Color.fromRGBO(30, 30, 30, 0.5),
      decorationThickness: 0,
    ),
    obscureText: iftapped,
    decoration: InputDecoration(
      prefixIcon: InkWell(
        onTap: ontap,
        child: prefixicon,
      ),
      contentPadding: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      hintText: hintText,
      hintStyle: GoogleFonts.cairo(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: const Color.fromRGBO(30, 30, 30, 0.5)),
      fillColor: const Color.fromRGBO(178, 165, 155, 0.2),
      filled: true,
      border: InputBorder.none,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
    ),
  );
}

Widget zahraSearchField(
  TextEditingController controller,
  void Function() onFieldSubmitted,
  BuildContext context,
  FocusNode focusnode,
  bool isFocused,
) {
  return TextFormField(
    focusNode: focusnode,
    controller: controller,
    onFieldSubmitted: (value) => onFieldSubmitted,
    keyboardType: TextInputType.text,
    textAlign: TextAlign.center,
    textInputAction: TextInputAction.done,
    cursorColor: const Color.fromRGBO(222, 208, 182, 1),
    enableSuggestions: true,
    style: GoogleFonts.cairo(
      color: const Color.fromRGBO(30, 30, 30, 0.5),
      decorationThickness: 0,
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.zero,
      suffixIcon: Container(
        width: mediaquerywidth(0.1, context),
        decoration: BoxDecoration(
          color: bgButtonColor,
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(
              30,
            ),
          ),
        ),
        child: Icon(
          Icons.search,
          color: const Color.fromRGBO(249, 243, 228, 1),
          size: mediaquerywidth(
            0.08,
            context,
          ),
        ),
      ),
      hintText: isFocused ? '' : 'بدور علي ايه ؟',
      hintStyle: GoogleFonts.almarai(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: const Color(
          0xff607274,
        ),
      ),
      fillColor: const Color.fromRGBO(222, 208, 182, 0.2),
      filled: true,
      border: InputBorder.none,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 0.6),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            40,
          ),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            40,
          ),
        ),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            40,
          ),
        ),
      ),
    ),
  );
}

Widget trackrequestfield(
  TextEditingController controller,
  void Function() onFieldSubmitted,
  Widget prefixicon,
  Widget suffixicon,
) {
  return TextFormField(
    onFieldSubmitted: (value) => onFieldSubmitted,
    controller: controller,
    keyboardType: TextInputType.text,
    textAlign: TextAlign.right,
    textInputAction: TextInputAction.done,
    cursorColor: const Color.fromRGBO(222, 208, 182, 1),
    enableSuggestions: true,
    style: GoogleFonts.cairo(
      color: const Color.fromRGBO(30, 30, 30, 0.5),
      decorationThickness: 0,
    ),
    decoration: InputDecoration(
      prefixIcon: Padding(
        padding: const EdgeInsets.only(
          left: 12,
        ),
        child: prefixicon,
      ),
      suffixIcon: Padding(
        padding: const EdgeInsets.only(
          right: 12,
        ),
        child: suffixicon,
      ),
      contentPadding: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      fillColor: const Color.fromRGBO(178, 165, 155, 0.2),
      filled: true,
      border: InputBorder.none,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(222, 208, 182, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
    ),
  );
}

Widget creditCardField(
  TextEditingController controller,
  VoidCallback onFieldSubmitted,
  String hintText,
  TextInputType textInputType,
  TextInputFormatter textInputFormatter,
  MaskTextInputFormatter maskTextInputFormatter,
  void Function(String?) onChanged,
) {
  return Container(
    height: 52,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 4),
          blurRadius: 4,
          spreadRadius: 0,
          color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
      ],
    ),
    child: TextFormField(
      onChanged: onChanged,
      textCapitalization: TextCapitalization.words,
      maxLines: 1,
      onFieldSubmitted: (_) => onFieldSubmitted(),
      controller: controller,
      keyboardType: textInputType,
      textAlign: TextAlign.left,
      textInputAction: TextInputAction.done,
      cursorColor: const Color.fromRGBO(96, 114, 116, 1),
      enableSuggestions: true,
      inputFormatters: [
        textInputFormatter,
        maskTextInputFormatter,
        LengthLimitingTextInputFormatter(26)
      ],
      style: GoogleFonts.inter(
        color: const Color.fromRGBO(96, 114, 116, 1),
        fontSize: 13,
        fontWeight: FontWeight.w600,
        decorationThickness: 0,
        decoration: TextDecoration.none,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: const Color.fromRGBO(96, 114, 116, 1),
        ),
        fillColor: const Color.fromRGBO(255, 255, 255, 1),
        filled: true,
        border: InputBorder.none,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  );
}

Widget creditCardFieldIcon(
  TextEditingController controller,
  VoidCallback onFieldSubmitted,
  String hintText,
  TextInputType textInputType,
  TextInputFormatter textInputFormatter,
  MaskTextInputFormatter maskTextInputFormatter,
  void Function(String?) onChanged,
  Widget suffixicon,
) {
  return Container(
    height: 52,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 4),
          blurRadius: 4,
          spreadRadius: 0,
          color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
      ],
    ),
    child: TextFormField(
      onChanged: onChanged,
      textCapitalization: TextCapitalization.words,
      maxLines: 1,
      onFieldSubmitted: (_) => onFieldSubmitted(),
      controller: controller,
      keyboardType: textInputType,
      textAlign: TextAlign.left,
      textInputAction: TextInputAction.done,
      cursorColor: const Color.fromRGBO(96, 114, 116, 1),
      enableSuggestions: true,
      inputFormatters: [
        textInputFormatter,
        maskTextInputFormatter,
        LengthLimitingTextInputFormatter(26)
      ],
      style: GoogleFonts.inter(
        color: const Color.fromRGBO(96, 114, 116, 1),
        fontSize: 13,
        fontWeight: FontWeight.w600,
        decorationThickness: 0,
        decoration: TextDecoration.none,
      ),
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: suffixicon,
        ),
        contentPadding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: const Color.fromRGBO(96, 114, 116, 1),
        ),
        fillColor: const Color.fromRGBO(255, 255, 255, 1),
        filled: true,
        border: InputBorder.none,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  );
}

Widget writeaReview(
  TextEditingController writeaReviewController,
  FocusNode focusNode,
  String text,
) {
  return SizedBox(
    height: 160,
    child: Stack(
      children: [
        GestureDetector(
          onTap: () {
            focusNode.requestFocus();
          },
          child: Container(
            width: double.infinity,
            height: 150, // Adjust width as needed
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white, // Light background color
              borderRadius: BorderRadius.circular(16), // Rounded corners
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  focusNode: focusNode,
                  controller: writeaReviewController,
                  keyboardType: TextInputType.text,
                  maxLength: 250, // Character limit
                  maxLines: 6,
                  style: GoogleFonts.mulish(
                    color: const Color.fromRGBO(180, 189, 196, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    decorationThickness: 0,
                    decoration: TextDecoration.none,
                  ),
                  decoration: InputDecoration(
                    counterText: '',
                    hintText:
                        'Would you like to write anything about this Product?',
                    hintStyle: GoogleFonts.mulish(
                      color: const Color.fromRGBO(180, 189, 196, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Text(
            text,
            style: GoogleFonts.mulish(
              color: const Color.fromRGBO(180, 189, 196, 1),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget editUserField(
  TextEditingController controller,
  bool isPassword,
  int maxLength,
  TextInputFormatter textInputFormatter,
  bool isLocation,
  String hinttext,
) {
  return SizedBox(
    width: double.infinity,
    child: TextFormField(
      keyboardType: TextInputType.text,
      obscureText: isPassword ? true : false,
      controller: controller,
      textInputAction: TextInputAction.done,
      textCapitalization:
          isPassword ? TextCapitalization.none : TextCapitalization.words,
      cursorColor: const Color.fromRGBO(131, 145, 161, 1),
      inputFormatters: [
        textInputFormatter,
        LengthLimitingTextInputFormatter(maxLength),
      ],
      style: GoogleFonts.urbanist(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: const Color.fromRGBO(131, 145, 161, 1),
      ),
      decoration: InputDecoration(
        fillColor: const Color.fromRGBO(247, 248, 249, 1),
        filled: true,
        suffixIcon: isLocation
            ? SvgPicture.asset(
                'assets/openlocation.svg',
                fit: BoxFit.scaleDown,
              )
            : const Text(''),
        hintText: hinttext,
        hintStyle: GoogleFonts.urbanist(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color.fromRGBO(131, 145, 161, 1),
        ),
        contentPadding: const EdgeInsets.all(20),
        border: InputBorder.none,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(218, 218, 218, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(218, 218, 218, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  );
}

Widget getNewPassword(
  TextEditingController controller,
  int maxLength,
  TextInputFormatter textInputFormatter,
  String hinttext,
) {
  return SizedBox(
    width: double.infinity,
    child: TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: controller,
      textInputAction: TextInputAction.done,
      cursorColor: const Color.fromRGBO(131, 145, 161, 1),
      inputFormatters: [
        textInputFormatter,
        LengthLimitingTextInputFormatter(maxLength),
      ],
      style: GoogleFonts.mulish(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: const Color.fromRGBO(80, 80, 80, 1),
      ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIcon: SvgPicture.asset(
          'assets/closeeye.svg',
          fit: BoxFit.scaleDown,
        ),
        prefixIcon: SvgPicture.asset(
          'assets/lock.svg',
          fit: BoxFit.scaleDown,
        ),
        hintText: hinttext,
        hintStyle: GoogleFonts.mulish(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(80, 80, 80, 1),
        ),
        contentPadding: const EdgeInsets.all(20),
        border: InputBorder.none,
      ),
    ),
  );
}
