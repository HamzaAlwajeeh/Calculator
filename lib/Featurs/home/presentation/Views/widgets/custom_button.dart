import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.width,
  });
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        minimumSize: Size(width ?? 77, 75),
      ),
      child: Center(
        child: Text(text, style: Styles.textStyle32.copyWith(color: textColor)),
      ),
    );
  }
}
