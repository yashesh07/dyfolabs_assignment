import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:dyfolabs_assignment/widgets/swip_icon.dart';
import 'package:flutter/material.dart';

class GateContainer extends StatefulWidget {

  final String gateNumber;
  final String gateStatus;

  GateContainer({this.gateNumber = '', this.gateStatus = ''});

  @override
  State<GateContainer> createState() => _GateContainerState();
}

class _GateContainerState extends State<GateContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 150,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gate ${widget.gateNumber}',
              style: const TextStyle(
                  fontSize: 20.0,
                  color: kWhiteColor
              ),
            ),
            Text(
              widget.gateStatus,
              style: TextStyle(
                fontSize: 8.0,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: SwipIcon(
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
            ),
          ],
        ),
      ),
    );
  }
}