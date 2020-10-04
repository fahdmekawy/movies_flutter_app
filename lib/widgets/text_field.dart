import 'package:flutter/material.dart';

import '../constants.dart';

class TextField_Wiget extends StatelessWidget {
  final String hint_text;
  final TextInputType textInputType;
  final bool pass_or_not;
  const TextField_Wiget({
    Key key,
    this.hint_text,
    this.textInputType,
    this.pass_or_not = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black87),
      obscureText: pass_or_not,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        filled: true,
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        fillColor: Colors.white,
        // labelText: "Email",
        hintText: hint_text,
        hintStyle: TextStyle(color: Colors.grey),
        // floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
