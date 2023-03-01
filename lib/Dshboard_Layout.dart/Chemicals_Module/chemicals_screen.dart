import 'package:flutter/material.dart';
import 'package:mem_store_app/Dshboard_Layout.dart/Chemicals_Module/widgets/middle_cards.dart';
import 'widgets/top_level_card.dart';

class ChemicalsScreen extends StatelessWidget {
  const ChemicalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          TopLevelCard(),
          SizedBox(height: 20),
          MiddleCardsWidget(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
