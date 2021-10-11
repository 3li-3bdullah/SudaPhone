import 'package:flutter/material.dart';

class CustomBuildCategoriesLogo extends StatelessWidget {
  const CustomBuildCategoriesLogo({
    required this.imageLogo,
    required this.text,
    required this.onTap,
  });
  final String imageLogo;
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 100,
          width: 100,
          child: ListTile(
              title: Image.asset(
                imageLogo,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              subtitle:
                  Container(child: Text(text, textAlign: TextAlign.center)))),
      onTap: () {
        onTap();
      },
    );
  }
}
