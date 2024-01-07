import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final double fontSize;
  final Color backgroundColor;
  final String routeName;

  Button(this.width, this.height, this.text, this.color, this.fontSize,
      this.backgroundColor, this.routeName);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Container(
          width: width ,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: backgroundColor),
          child: Align(
            alignment: Alignment.center,
            child: Text(text,
                style: TextStyle(
                    fontFamily: "Trajan",
                    fontSize: fontSize,
                    fontWeight: FontWeight.w700,
                    color: color,
                    decorationThickness: 0)),
          )),
    );
  }
}
