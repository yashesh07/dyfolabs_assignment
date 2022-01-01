import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:dyfolabs_assignment/widgets/swip_icon.dart';
import 'package:flutter/material.dart';

class GateContainer extends StatefulWidget {

  final String gateNumber;
  final String gateStatus;
  bool isOn;
  final Function(bool) changeSwitch;

  GateContainer({this.gateNumber = '', this.gateStatus = '', required this.isOn, required this.changeSwitch});

  @override
  State<GateContainer> createState() => _GateContainerState();
}

class _GateContainerState extends State<GateContainer> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(5),
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
              padding: const EdgeInsets.only(left: 10),
              child: SwipIcon(
                onTap: (){},
                onDoubleTap: (){},
                onSwipe: (){},
                value: widget.isOn,
                iconOn: Icons.lock_open,
                iconOff: Icons.lock,
                onChanged: (bool state){
                  WidgetsBinding.instance!.addPostFrameCallback((_){
                    widget.changeSwitch(state);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}