import 'package:flutter/material.dart';
import 'package:mem_store_app/utilties/theme.dart';

class TopLevelCard extends StatelessWidget {
  const TopLevelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20,
          ),
          width: 450,
          height: 105,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      '920,000 KG',
                      style: lightTheme.textTheme.displayLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Total Chemical QTY',
                      style: lightTheme.textTheme.displayMedium,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      '7',
                      style: lightTheme.textTheme.displayLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Total Chemical Suppliers',
                      style: lightTheme.textTheme.displayMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
