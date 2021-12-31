import 'package:dyfolabs_assignment/widgets/card_tile.dart';
import 'package:flutter/material.dart';

class CardGridView extends StatefulWidget {
  const CardGridView({Key? key}) : super(key: key);

  @override
  _CardGridViewState createState() => _CardGridViewState();
}

class _CardGridViewState extends State<CardGridView> {

  final cardList = [];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(bottom: 80.0),
      childAspectRatio: 3/2,
      mainAxisSpacing: 0,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate( 15, (index) {
        return const Center(
          child: CardTile(),
        );
      }),
    );
  }
}
