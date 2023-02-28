import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Products',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
