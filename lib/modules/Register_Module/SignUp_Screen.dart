import 'package:flutter/material.dart';
import 'package:mem_store_app/modules/Register_Module/widgets/SignUpLeftSide.dart';
import 'package:multi_split_view/multi_split_view.dart';

class SignUpScreen extends StatelessWidget {
  static const String registerScreenRoute = '/SignUp_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiSplitView(
        resizable: true,
        axis: Axis.horizontal,
        children: [
          SignUpLeftSide(),
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Container(
              margin: EdgeInsets.all(100),
              child: Image.asset(
                'lib/assets/imgs/butlerm_1repeat.gif',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
