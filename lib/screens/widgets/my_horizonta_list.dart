import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontaList extends StatelessWidget {
  const MyHorizontaList(
      {Key? key,
      required this.startColor,
      required this.endColor,
      required this.courseHeadline,
      required this.coursTitle,
      required this.courseImage})
      : super(key: key);

  final int startColor, endColor;
  final String courseHeadline, coursTitle, courseImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 26,
      ),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1, 0.0),
            colors: <Color>[
              Color(startColor),
              Color(endColor),
            ],
          ),
        ),
        child: Stack(children: [
          //กล่องแนวนอน
          Positioned(
            top: 15,
            left: 11,
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 39,
              decoration: BoxDecoration(
                color: const Color(0xffA2E5F7),
                borderRadius: BorderRadius.circular(36),
              ),
              child: Text(
                courseHeadline,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 14,
            child: Text(
              coursTitle,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              courseImage,
              scale: 2.6,
            ),
          ),
        ]),
      ),
    );
  }
}
