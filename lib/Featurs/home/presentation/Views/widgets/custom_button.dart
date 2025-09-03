import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.width,
    this.textStyle,
  });
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? width;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        minimumSize: Size(width ?? 77, 75),
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle ?? Styles.textStyle32.copyWith(color: textColor),
        ),
      ),
    );
  }
}
