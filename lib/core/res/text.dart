
import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget{
  final String text;
  final double fontSizer;
  final Color color;

  const TextWidget({super.key, required this.text, required this.fontSizer, required this.color});
  @override
  Widget build(BuildContext context) {
  return  SelectableText(
      text ,
      style: TextStyle(
          fontFamily: "Trajan",
          fontSize: fontSizer,
          fontWeight: FontWeight.w700,
          color: color,
          decorationThickness: 0));
  }

}