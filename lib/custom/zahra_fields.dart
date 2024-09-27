import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_colors.dart';

Widget textFormField(
    TextEditingController controller,
    void Function() onFieldSubmitted,
    String hintText,
    TextInputType textInputType,
    TextInputFormatter textInputFormatter) {
  return TextFormField(
    onFieldSubmitted: (value) => onFieldSubmitted,
    controller: controller,
    keyboardType: textInputType,
    textAlign: TextAlign.right,
    textInputAction: TextInputAction.done,
    cursorColor: const Color.fromRGBO(222, 208, 182, 1),
    enableSuggestions: true,
    style: GoogleFonts.cairo(
      color: const Color.fromRGBO(30, 30, 30, 0.5),
      decorationThickness: 0,
    ),
    inputFormatters: [
      textInputFormatter,
    ],
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
