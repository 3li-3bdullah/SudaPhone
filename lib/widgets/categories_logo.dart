
import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';

class CategoriesLogo extends StatelessWidget {
  const CategoriesLogo({
    required this.imageLogo,
    required  this.text,
    required   this.onTap,
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
                width: 90,
                fit: BoxFit.cover,
              ),
              subtitle:
                  Container(
                    child:CustomText(
                      text: text,
                      textAlign: TextAlign.center,
                      color: Colors.grey.shade800,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                        ))),
      onTap: () {
        onTap();
      },
    );
  }
}
