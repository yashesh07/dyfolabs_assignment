import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ModelScreen extends StatefulWidget {
  const ModelScreen({Key? key}) : super(key: key);

  @override
  _ModelScreenState createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kGradientBackgroundBoxDecoration.copyWith(
          image: DecorationImage(
            image: const AssetImage('assets/4.jpg'),
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}


