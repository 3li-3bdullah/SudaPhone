import 'package:flutter/material.dart';

class CustomTextOfDetails extends StatelessWidget {
  const CustomTextOfDetails(
      {
      required  this.containerColor,
      required  this.text1,
      required  this.text2});
  final Color containerColor;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        color: containerColor,
        child: RichText(
            text: TextSpan(style: TextStyle(fontSize: 18), children: <TextSpan>[
          TextSpan(text: text1, style: TextStyle(color: Colors.black)),
          TextSpan(text: text2, style: TextStyle(color: Colors.white)),
        ])));
  }
}