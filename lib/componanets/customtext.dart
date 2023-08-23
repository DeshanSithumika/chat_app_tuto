import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
      required this.text,
      this.color = Colors.white,
      this.fontWeight = FontWeight.w500,
      this.fontSize = 16});
  String text;
  FontWeight fontWeight;
  double fontSize;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
