import 'package:flutter/material.dart';



Widget defaultTextFormField
    ({
  required TextEditingController controller,
  TextInputType textInputType= TextInputType.text,
  var onChange,prefixIcon,suffixIcon,validator,
  required String labelText ,
  bool obscureText = false

}) {
  return TextFormField(
    validator: validator,
    controller: controller,
    keyboardType: textInputType,
    onChanged: onChange,
    obscureText: obscureText,
    decoration:  InputDecoration(
      labelText: labelText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(),

    ),
  );


}