import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:dyfolabs_assignment/widgets/card_tile.dart';
import 'package:flutter/material.dart';

class CardGridView extends StatefulWidget {
  const CardGridView({Key? key}) : super(key: key);

  @override
  _CardGridViewState createState() => _CardGridViewState();
}

class _CardGridViewState extends State<CardGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding:
            const EdgeInsets.only(bottom: 85.0, left: 15, right: 15, top: 10),
        childAspectRatio: 1.60,
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 25,
        crossAxisSpacing: 15,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        crossAxisCount: 2,
        children: [
          CardTile(
            isOn: true,
            isGate: true,
            gateNumber: '2',
            gateStatus: 'Unlocked',
          ),
          CardTile(
            isOn: false,
            isGate: true,
            gateNumber: '1',
            gateStatus: 'Unlocked',
          ),
          CardTile(
            isOn: true,
            iconWidget: const Icon(
              Icons.wb_twighlight,
              size: 25,
              color: kWhiteColor,
            ),
            deviceName: 'Studio Light',
            description: 'Phillips Hue',
            subWidget: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                  color: Colors.purple.shade400, shape: BoxShape.circle),
            ),
          ),
          CardTile(
              isOn: false,
              iconWidget: const Icon(
                Icons.wb_twighlight,
                size: 25,
                color: kWhiteColor,
              ),
              deviceName: 'Door Light',
              description: 'Amazon 1',
              subWidget: const Icon(
                Icons.access_time_outlined,
                size: 15,
                color: Colors.white70,
              )),
          CardTile(
              isOn: true,
              iconWidget: const Icon(
                Icons.coffee_maker_outlined,
                size: 25,
                color: kWhiteColor,
              ),
              deviceName: 'Coffee Machine',
              description: 'Phillips Smart Brew',
              timeLocation: '05:25·Latte',
              subWidget: const Icon(
                Icons.access_time_outlined,
                size: 15,
                color: Colors.white70,
              )),
          CardTile(
            isOn: true,
            iconWidget: const Icon(
              Icons.ac_unit,
              size: 25,
              color: kWhiteColor,
            ),
            deviceName: 'A.C.',
            description: 'LG Smart',
            temperature: '23°',
            subWidget: const Icon(
              Icons.chevron_right_rounded,
              size: 15,
              color: Colors.white70,
            ),
          ),
          CardTile(
            isOn: false,
            iconWidget: const Icon(
              Icons.desktop_windows_outlined,
              size: 25,
              color: kWhiteColor,
            ),
            deviceName: 'LR TV',
            description: 'Samsung OLED',
          ),
          CardTile(
            isOn: false,
            iconWidget: const Icon(
              Icons.wb_twighlight,
              size: 25,
              color: kWhiteColor,
            ),
            deviceName: 'Chandelier',
            subWidget: const Icon(
              Icons.access_time_outlined,
              size: 15,
              color: Colors.white70,
            ),
          ),
          CardTile(
            isOn: true,
            iconWidget: const Icon(
              Icons.wb_twighlight,
              size: 25,
              color: kWhiteColor,
            ),
            deviceName: 'Studio Light',
            description: 'Phillips Hue',
            subWidget: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                  color: Colors.purple.shade400, shape: BoxShape.circle),
            ),
          ),
          CardTile(
            isOn: true,
            iconWidget: const Icon(
              Icons.ac_unit,
              size: 25,
              color: kWhiteColor,
            ),
            deviceName: 'A.C.',
            description: 'LG Smart',
            temperature: '23°',
            subWidget: const Icon(
              Icons.chevron_right_rounded,
              size: 15,
              color: Colors.white70,
            ),
          ),
        ]);
  }
}
