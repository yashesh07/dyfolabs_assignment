import 'package:flutter/material.dart';

const kBlackColor = Color(0xFF000000);
const kBlackColorShade2 = Color(0xFF272727);
const kYellowColor = Color(0xFFEBB93D);
const kYellowColorShade2 = Color(0xFF937429);
const kYellowColorShade3 = Color(0xFF725C25);
const kWhiteColor = Colors.white;
const kGreyColor = Colors.grey;
const kGradientBackgroundBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(
        0.5, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[kBlackColorShade2, kBlackColor], // red to yellow
  ),
);
const kCardBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(
        0.2, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[kBlackColorShade2, kBlackColor], // red to yellow
  ),
);