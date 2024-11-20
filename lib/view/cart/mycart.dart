// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_buttons.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/custom/zahra_orderadress.dart';
import 'package:zahra/view/cart/cartitems.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // Create a GlobalKey for the Scaffold
  final TextEditingController searchfieldcontroller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  bool isFocused = false;
  void onFieldSubmitted() {
    focusNode.unfocus();
    String search = searchfieldcontroller.text;
  }

  @override
  void dispose() {
    searchfieldcontroller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        focusNode.unfocus();
      },
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
              zahraSearchField(
                searchfieldcontroller,
                onFieldSubmitted,
                context,
                focusNode,
                isFocused,
              ),
              SizedBox(
                height: mediaqueryheight(0.04, context),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      orderDetails(context),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      addpromocode(context),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      orderSummary(context),
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      const OrderAddress(),
                      SizedBox(
                        height: mediaqueryheight(0.04, context),
                      ),
                      zahraPayment(
                        context,
                        const Cartitems(),
                        SvgPicture.asset('assets/movetopayment.svg'),
                        () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
