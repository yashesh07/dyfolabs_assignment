import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
      child: Positioned(
        top: 32,
        left: 0,
        right: 0,
        child: buildBlur(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          ),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35),
              ),
              border: Border.all(
                color: Colors.grey.shade900,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBlur({
    @required Widget? child,
    BorderRadius? borderRadius,
    double sigmaX = 5,
    double sigmaY = 5,
  }) =>
      ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );
}
