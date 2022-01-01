import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:dyfolabs_assignment/widgets/gradient_border.dart';

import 'device_container.dart';
import 'gate_container.dart';

class CardTile extends StatefulWidget {
  final bool isGate;
  bool isOn;
  final Widget iconWidget;
  final Widget subWidget;
  final String deviceName;
  final String description;
  final String timeLocation;
  final String temperature;
  final String gateStatus;
  final String gateNumber;

  CardTile(
      {this.isGate = false,
      required this.isOn,
      this.iconWidget = const Text(''),
      this.description = "",
      this.deviceName = "",
      this.timeLocation = "",
      this.subWidget = const Text(''),
      this.temperature = "",
      this.gateStatus = '',
      this.gateNumber = ''});

  @override
  _CardTileState createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  @override
  Widget build(BuildContext context) {
    void changeSwitch(bool state) {
      setState(() {
        widget.isOn = state;
      });
    }

    return UnicornOutlineButton(
      strokeWidth: 1.5,
      radius: 12,
      gradient: LinearGradient(
          begin: const Alignment(-0.5, -1.5),
          end: const Alignment(0.0, 1.2),
          stops: const [
            0.2,
            0.4,
          ],
          colors: widget.isOn
              ? [kYellowColorShade3, Colors.grey.shade800]
              : [Colors.grey.shade800, Colors.grey.shade800]),
      onPressed: widget.isGate
          ? () {}
          : () {
              setState(() {
                widget.isOn = !widget.isOn;
              });
            },
      child: widget.isGate
          ? GateContainer(
              changeSwitch: changeSwitch,
              gateNumber: widget.gateNumber,
              gateStatus: widget.gateStatus,
              isOn: widget.isOn,
            )
          : DeviceContainer(
              isOn: widget.isOn,
              iconWidget: widget.iconWidget,
              deviceName: widget.deviceName,
              subWidget: widget.subWidget,
              description: widget.description,
              temperature: widget.temperature,
              timeLocation: widget.timeLocation,
            ),
    );
  }
}
