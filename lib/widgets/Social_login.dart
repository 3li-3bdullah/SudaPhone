
import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';
import '../constants.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    required this.imageSocial,
    required this.text,
  });
  final String imageSocial;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(70)),
          child: ListTile(
              onTap: () {},
              title: Image.asset(
                imageSocial,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
              subtitle: Container(
                child: CustomText(
                  text: text,
                  textAlign: TextAlign.center,
                  color: kprimaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              )),
        ));
  }
}
