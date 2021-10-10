import 'package:flutter/material.dart';

class CustomLastProduct extends StatelessWidget {
  const CustomLastProduct({
    this.imageProduct,
    this.text, this.onTap,
  });
  final String imageProduct;
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GridTile(
          child: Image.asset(imageProduct),
          footer: Container(
              height: 25,
              color: Colors.black.withOpacity(0.4),
              child: Text(text,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center))),
      onTap: onTap,
    );
  }
}