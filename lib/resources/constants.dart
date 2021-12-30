import 'package:flutter/material.dart';

const kBlackColor = Color(0xFF000000);
const kBlackColorShade2 = Color(0xFF272727);
const kYellowColor = Color(0xFFEBB93D);
const kYellowColorShade2 = Color(0xFF937429);
const kWhiteColor = Colors.white;
const kGreyColor = Colors.grey;
const kContainerBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(
        0.8, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[kBlackColorShade2, kBlackColor], // red to yellow
  ),
);