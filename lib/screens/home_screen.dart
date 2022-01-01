import 'dart:ui';
import 'package:dyfolabs_assignment/resources/constants.dart';
import 'package:dyfolabs_assignment/widgets/bottom_navigation_bar.dart';
import 'package:dyfolabs_assignment/widgets/grid_view.dart';
import 'package:dyfolabs_assignment/widgets/tab_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_icons/flutter_weather_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kGradientBackgroundBoxDecoration,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 25.0,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'tempest',
                            style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Courgette'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              decoration: const BoxDecoration(
                                  color: kYellowColor, shape: BoxShape.circle),
                            ),
                          )
                        ]),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade800,
                          width: 1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: kWhiteColor,
                        size: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'Hello',
                          style: TextStyle(
                              color: kGreyColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 25),
                        ),
                        Text(
                          'Moritz',
                          style: TextStyle(
                              color: kWhiteColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 35),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Icon(
                              WeatherIcons.wiDayCloudy,
                              color: kYellowColorShade2,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '16°C · NewYork',
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w400,
                                fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                    padding: const EdgeInsets.only(left: 10.0),
                    tabs: [
                      Tab(
                        child: TabContainer(
                          labelName: 'Living room',
                          color: _tabController.index == 0
                              ? Colors.white60
                              : Colors.grey.shade800,
                          borderColor: _tabController.index == 0
                              ? kYellowColorShade2
                              : Colors.grey.shade800,
                        ),
                      ),
                      Tab(
                        child: TabContainer(
                          labelName: 'Kitchen',
                          color: _tabController.index == 1
                              ? Colors.white60
                              : Colors.grey.shade800,
                          borderColor: _tabController.index == 1
                              ? kYellowColorShade2
                              : Colors.grey.shade800,
                        ),
                      ),
                      Tab(
                        child: TabContainer(
                          labelName: 'Bedroom',
                          color: _tabController.index == 2
                              ? Colors.white60
                              : Colors.grey.shade800,
                          borderColor: _tabController.index == 2
                              ? kYellowColorShade2
                              : Colors.grey.shade800,
                        ),
                      ),
                      Tab(
                        child: TabContainer(
                          labelName: 'Bathroom',
                          color: _tabController.index == 3
                              ? Colors.white60
                              : Colors.grey.shade800,
                          borderColor: _tabController.index == 3
                              ? kYellowColorShade2
                              : Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: CardGridView(),
            ),
          ),
        ]),
      ),
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
