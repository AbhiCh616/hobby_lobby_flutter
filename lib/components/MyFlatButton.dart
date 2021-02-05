import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double horizontalPadding;
  final double verticalPadding;
  final Color textColor;
  final Color backgroundColor;
  final double borderRadius;
  final Function onClick;

  MyFlatButton({
    required this.text,
    required this.fontSize,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.textColor,
    required this.backgroundColor,
    required this.borderRadius,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => this.onClick(),
      child: Text(
        this.text,
        style: TextStyle(fontSize: this.fontSize),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: this.verticalPadding,
          horizontal: this.horizontalPadding,
        ),
        backgroundColor: this.backgroundColor,
        primary: this.textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.borderRadius),
        ),
      ),
    );
  }
}
