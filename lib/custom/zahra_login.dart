import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra/custom/zahra_texts.dart';

Widget rowWidgets(
  BuildContext context,
) {
  bool ifchecked = false;
  return StatefulBuilder(
    builder: (context, setState) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'نسيت كلمه المرور',
            style: GoogleFonts.cairo(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(30, 30, 30, 1),
              decoration: TextDecoration.underline,
            ),
          ),
          Transform.translate(
            offset: Offset(
              MediaQuery.of(context).size.width * 0.02,
              0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                zahratexts12px(
                  'تذكرني',
                ),
                Checkbox.adaptive(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: const Color.fromRGBO(222, 208, 182, 1),
                  checkColor: const Color.fromRGBO(222, 208, 182, 1),
                  side: WidgetStateBorderSide.resolveWith(
                    (states) {
                      if (states.contains(
                        WidgetState.selected,
                      )) {
                        return const BorderSide(
                          color: Color.fromRGBO(
                            222,
                            208,
                            182,
                            1,
                          ),
                        );
                      }
                      return const BorderSide(
                        color: Color.fromRGBO(
                          222,
                          208,
                          182,
                          1,
                        ),
                      );
                    },
                  ),
                  fillColor: const WidgetStatePropertyAll(
                    Color.fromRGBO(249, 243, 228, 1),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        4,
                      ),
                    ),
                  ),
                  value: ifchecked,
                  onChanged: (value) {
                    setState(() {});
                    ifchecked = value!;
                  },
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
