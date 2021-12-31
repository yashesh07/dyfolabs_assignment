import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {

  final String labelName;
  final Color color;
  final Color borderColor;

  TabContainer({required this.labelName, required this.color, required this.borderColor});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      height: 25,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius:
        const BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Center(
        child: Text(
          labelName,
          style: TextStyle(
            fontSize: 11,
            color: color
          ),
        ),
      ),
    );
  }
}
