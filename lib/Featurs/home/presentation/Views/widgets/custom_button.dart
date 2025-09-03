import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.width,
  });
  final void Function()? onTap;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 62,
        height: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle32.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
