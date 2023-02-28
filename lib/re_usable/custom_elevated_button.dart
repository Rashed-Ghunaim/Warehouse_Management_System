import 'package:flutter/material.dart';

Widget customElevatedButton({
  required final void Function() onPressed,
  required final String title,
  final Color? primaryColor,
  double width = double.infinity,
  double height = 50,
  Color? titleColor = Colors.white,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      title,
      style: TextStyle(
        color: titleColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      minimumSize: Size(width, height),
    ),
  );
}
