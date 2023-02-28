import 'package:flutter/material.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Assets',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
