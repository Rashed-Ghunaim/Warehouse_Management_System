import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 15,
    ),
    labelMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedLabelStyle: TextStyle(
      color: Colors.black,
    ),
  ),
);
