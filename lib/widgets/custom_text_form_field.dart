import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.onSave,
    required this.pass,
    required this.validator,
    required this.icon,
    required this.myhinttext,
    required this.fillColor,
    required this.enabledColor,
    required this.focusedColor,
    required this.borderSideColor,
    required this.prefixColor,
  });
  final Function onSave;
  final bool pass;
  final Function validator;
  final IconData icon;
  final String myhinttext;
  final Color fillColor;
  final Color enabledColor;
  final Color focusedColor;
  final Color borderSideColor;
  final Color prefixColor;
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
          prefixIcon: Icon(icon, color: prefixColor),
          filled: true,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: enabledColor, style: BorderStyle.solid, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: focusedColor, style: BorderStyle.solid, width: 1)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: borderSideColor, style: BorderStyle.solid, width: 1))),
    );
  }
}
