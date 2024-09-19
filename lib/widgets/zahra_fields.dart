import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textFormField(
  TextEditingController controller,
  void Function() onFieldSubmitted,
  String hintText,
) {
  return TextFormField(
    onFieldSubmitted: (value) => onFieldSubmitted,
    controller: controller,
    keyboardType: TextInputType.text,
    textAlign: TextAlign.right,
    inputFormatters: [
      FilteringTextInputFormatter.allow(
        RegExp(r'[ء-ي\s]'),
      ),
    ],
    textInputAction: TextInputAction.done,
    cursorColor: const Color.fromRGBO(222, 208, 182, 1),
    enableSuggestions: true,
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
    inputFormatters: [
      FilteringTextInputFormatter.allow(
        RegExp(r'[ء-ي\s]'),
      ),
    ],
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
