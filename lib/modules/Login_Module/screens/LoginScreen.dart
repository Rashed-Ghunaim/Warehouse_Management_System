import 'package:flutter/material.dart';

import 'package:multi_split_view/multi_split_view.dart';

import '../widgets/LoginLeftSideWidget.dart';

class LoginScreen extends StatelessWidget {
  static const String loginScreenRoute = '/Login_Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiSplitView(
        
        resizable: true,
        axis: Axis.horizontal,
        children: [
          LoginLeftSide(),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Image.asset(
              'lib/assets/imgs/pic1.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
