// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/custom/zahra_orderadress.dart';

class Cartitems extends StatefulWidget {
  const Cartitems({super.key});

  @override
  State<Cartitems> createState() => _CartitemsState();
}

class _CartitemsState extends State<Cartitems> {
  // Create a GlobalKey for the Scaffold

  @override
  void dispose() {
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: zahraWhiteContainer(
        mychild: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: mediaquerywidth(0.05, context),
          ),
          child: Column(
            children: [
              SizedBox(
                height: mediaqueryheight(0.03, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
