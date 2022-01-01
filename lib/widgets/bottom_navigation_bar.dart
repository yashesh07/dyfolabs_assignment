import 'dart:ui';

import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int pageIndex = 0;

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
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.home_outlined,
                        size: 25,
                        color: pageIndex == 0 ? kYellowColor : kWhiteColor,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      icon: Icon(
                        Icons.grid_view_rounded,
                        size: 25,
                        color: pageIndex == 1 ? kYellowColor : kWhiteColor,
                      )),
                  Stack(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.notifications_none_rounded,
                            size: 25,
                            color: pageIndex == 2 ? kYellowColor : kWhiteColor,
                          ),
                          onPressed: () {
                            setState(() {
                              pageIndex = 2;
                            });
                          }),
                      Positioned(
                        left: 13,
                        top: 17,
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: kYellowColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: 5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 3;
                        });
                      },
                      icon: Icon(
                        Icons.settings_outlined,
                        size: 25,
                        color: pageIndex == 3 ? kYellowColor : kWhiteColor,
                      )),
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
