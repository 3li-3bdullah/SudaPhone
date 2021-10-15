import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    context,
  required  this.text,
  required  this.textAlign,
  required  this.color,
  required  this.fontSize,
  required  this.fontWeight,
  });
  final String text;
  final TextAlign textAlign;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}