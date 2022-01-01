import 'dart:ui';

import 'package:dyfolabs_assignment/resources/constants.dart';
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
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 25.0),
      child: Positioned(
        top: 32,
        left: 0,
        right: 0,
        child: buildBlur(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
              border: Border.all(
                color: Colors.grey.shade900,
                width: 1,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.home_outlined, size: 25, color: kWhiteColor,)),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.grid_view_rounded, size: 25, color: kWhiteColor,)),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.notifications_none_rounded, size: 25, color: kWhiteColor,)),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.settings_outlined, size: 25, color: kWhiteColor,)),
                ],
              ),
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
