import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';

class MiddleCardsWidget extends StatelessWidget {
  const MiddleCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 250,
          width: double.infinity,
          child: MultiSplitView(
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.red,
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 250,
          width: double.infinity,
          child: MultiSplitView(
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.red,
              )
            ],
          ),
        ),
      ],
    );
  }
}
