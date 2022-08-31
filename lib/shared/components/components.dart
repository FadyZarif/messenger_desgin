import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,radius=0.0,
  Color color = Colors.pink,
  required void Function() function,
  String text =''
})
{
  return Container(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius)
    ),
    child: MaterialButton(
      onPressed: function,
      height: 50.0,
      color: color,

      child:  Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
  );
}
