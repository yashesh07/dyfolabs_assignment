import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:dyfolabs_assignment/widgets/gradient_border.dart';

class CardTile extends StatefulWidget {
  const CardTile({Key? key}) : super(key: key);

  @override
  _CardTileState createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  @override
  Widget build(BuildContext context) {
    return UnicornOutlineButton(
      strokeWidth: 1.5,
      radius: 12,
      gradient: LinearGradient(
          begin: const Alignment(
              -0.5, -1.5),
          end: const Alignment(
              0.0, 1.2),
          stops: const [
            0.2,
            0.4,
          ],
          colors: [
            kYellowColorShade3,
            Colors.grey.shade900
          ]),
      onPressed: () {},
      child: Container(
        height: 85,
        width: 145,
      ),
    );
  }
}
