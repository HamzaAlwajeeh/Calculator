import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';

class ButtonModel {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? width;
  final double hight;
  final Styles textStyle;
  final void Function()? onTap;

  ButtonModel({
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.width,
    required this.hight,
    required this.textStyle,
    this.onTap,
  });
}
