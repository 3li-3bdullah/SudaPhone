import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {required this.onSave,
      required this.pass,
      required this.validator,
      required this.icon,
      required this.myhinttext,
      required this.fillColor,
      required this.colorEnabled,
      required this.colorFocused,
      required this.colorBorderSide});
  final Function onSave;
  final bool pass;
  final Function validator;
  final IconData icon;
  final String myhinttext;
  final Color fillColor;
  final Color colorEnabled;
  final Color colorFocused;
  final Color colorBorderSide;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      ///autovalidateMode: AutovalidateMode.always,
      onSaved: (value) {
        onSave();
      },

      obscureText: pass,
      validator: (value) {
        validator();
      },
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          hintText: myhinttext,
          prefixIcon: Icon(icon, color: Colors.green),
          filled: true,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: colorEnabled, style: BorderStyle.solid, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: colorFocused, style: BorderStyle.solid, width: 1)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: colorBorderSide, style: BorderStyle.solid, width: 1))),
    );
  }
}
