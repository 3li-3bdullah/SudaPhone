
import 'package:flutter/material.dart';
import '../compount/validinput.dart';

class TextFormFieldAll extends StatelessWidget {
  const TextFormFieldAll({
    required this.pass,
    required this.password,
    required this.onClick,
    required this.myContorller,
    required this.myhinttext,
    required this.icon,
    required this.type,
  });
  final Function onClick;
  final TextEditingController password;
  final TextEditingController myContorller;
  final bool pass;
  final String myhinttext;
  final IconData icon;
  final String type;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      ///autovalidateMode: AutovalidateMode.always,
      onSaved: (value) {
        onClick();
      },
      controller: myContorller,
      obscureText: pass,
      validator: (val) {
        if (type == "validusername") {
          return validInput("username", 20, 4, "username");
        }
        if (type == "validemail") {
          return validInput("email", 30, 15, "email");
        }
        if (type == "validpassword") {
          return validInput("password", 20, 6, "password");
        }
        if (type == "validconfirmpassword") {
          if (type != password.text) {
            return "The password isn\'t identical";
          }
        }
      },
      decoration: InputDecoration(contentPadding: EdgeInsets.all(4),
       hintText: myhinttext, prefixIcon: Icon(icon, color: Colors.green),
        filled: true, fillColor: Color(0xffe0e0e0),
         enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffbdbdbd),
          style: BorderStyle.solid, width: 1)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple,
            style: BorderStyle.solid, width: 1)), border: OutlineInputBorder(borderSide: BorderSide(
              color: Color(0xffbdbdbd), style: BorderStyle.solid, width: 1))),
    );
  }
}
