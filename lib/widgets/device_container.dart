import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:flutter/material.dart';

class DeviceContainer extends StatefulWidget {
  final bool isOn;
  final Widget iconWidget;
  final Widget subWidget;
  final String deviceName;
  final String description;
  final String timeLocation;
  final String temperature;

  DeviceContainer(
      {required this.isOn,
      this.iconWidget = const Text(''),
      this.description = "",
      this.deviceName = "",
      this.timeLocation = "",
      this.subWidget = const Text(''),
      this.temperature = ""});

  @override
  State<DeviceContainer> createState() => _DeviceContainerState();
}

class _DeviceContainerState extends State<DeviceContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.iconWidget,
                    Row(
                      children: [
                        Container(
                          width: 7.0,
                          height: 7.0,
                          decoration: BoxDecoration(
                              color: widget.isOn
                                  ? kYellowColorShade2
                                  : Colors.grey.shade800,
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          widget.isOn ? 'ON' : 'OFF',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: widget.isOn
                                ? kYellowColorShade2
                                : Colors.grey.shade800,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.deviceName,
                          style: const TextStyle(
                              fontSize: 15.0, color: kWhiteColor),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.description,
                          style: TextStyle(
                            fontSize: 8.0,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.temperature,
                      style:
                          const TextStyle(fontSize: 15.0, color: kWhiteColor),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.timeLocation,
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400),
                ),
                widget.subWidget,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
