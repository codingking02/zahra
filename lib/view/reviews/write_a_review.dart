// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zahra/custom/zahra_boxes.dart';
import 'package:zahra/custom/zahra_container.dart';
import 'package:zahra/custom/zahra_fields.dart';
import 'package:zahra/data/provider/navigation_provider.dart';
import 'package:zahra/view/home/home_screen2.dart';

class WriteAReview extends StatefulWidget {
  const WriteAReview({super.key});

  @override
  State<WriteAReview> createState() => _WriteAReviewState();
}

class _WriteAReviewState extends State<WriteAReview> {
  final int maxLength = 250;
  int remainingCharacters = 250;
  late TextEditingController _controller;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_updateRemainingCharacters);
  }

  void _updateRemainingCharacters() {
    setState(() {
      remainingCharacters = maxLength - _controller.text.length;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return zahraOffWhiteContainer(
      mychild: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: mediaquerywidth(0.05, context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mediaqueryheight(0.02, context),
            ),
            TextButton.icon(
              onPressed: () {
                final provider =
                    Provider.of<NavigationProvider>(context, listen: false);
                provider.selectScreen(const HomeScreen2());
              },
              label: Text(
                'Write a Review',
                style: GoogleFonts.jost(
                  fontWeight: FontWeight.w600,
                  fontSize: 21,
                  color: const Color.fromRGBO(32, 34, 68, 1),
                ),
              ),
              iconAlignment: IconAlignment.start,
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Color.fromRGBO(32, 34, 68, 1),
              ),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            getGraphicDesign(context),
            SizedBox(
              height: mediaqueryheight(0.02, context),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add Photo (or) Video',
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color.fromRGBO(32, 34, 68, 1),
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.02, context),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: SvgPicture.asset(
                        'assets/upload.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.01, context),
                    ),
                    Text(
                      'Write you Review',
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color.fromRGBO(32, 34, 68, 1),
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.02, context),
                    ),
                    writeaReview(
                      _controller,
                      _focusNode,
                      '*$remainingCharacters Characters Remaining',
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.02, context),
                    ),
                    Center(
                      child: getReviewButton(
                        () {},
                        SvgPicture.asset(
                          'assets/completereview.svg',
                        ),
                        context,
                      ),
                    ),
                    SizedBox(
                      height: mediaqueryheight(0.02, context),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
