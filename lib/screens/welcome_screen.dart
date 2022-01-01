import 'package:dyfolabs_assignment/widgets/swip_icon.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe?'),
      ),
      body: SwipIcon(
        onTap: (){},
        onDoubleTap: (){},
        onSwipe: (){},
        value: true,
        iconOn: Icons.lock_open_rounded,
        iconOff: Icons.lock_outline_rounded,
        textSize: 16.0,
        onChanged: (bool state) {
          print('Current State of SWITCH IS: $state');
        },
      ),
    );
  }
}
