import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({   required this.onSave,required this.pass,
  required this.validator,required this.icon,required this.myhinttext}) ;
  final Function onSave;
  final bool pass;
  final Function validator;
  final IconData icon;
  final String myhinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      ///autovalidateMode: AutovalidateMode.always,
      onSaved: (value) {
        onSave();
      },
     
      obscureText: pass,
      validator: (val) {
      },
      decoration: InputDecoration(contentPadding: EdgeInsets.all(4), hintText: myhinttext,
       prefixIcon: Icon(icon, color: Colors.green), filled: true, fillColor: Color(0xffe0e0e0),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffbdbdbd), 
        style: BorderStyle.solid, width: 1)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(
          color: Colors.purple, style: BorderStyle.solid, width: 1)),
           border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffbdbdbd),
            style: BorderStyle.solid, width: 1))),
    );
  }
}