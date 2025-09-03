import 'package:calculator/Featurs/home/presentation/Views/widgets/custom_button.dart';
import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomRowButtons extends StatelessWidget {
  const CustomRowButtons({
    super.key,
    required this.text1,
    this.text2,
    required this.text3,
    required this.text4,
    this.width,
    this.textColor,
    this.backgroundColor,
  });
  final String text1;
  final String? text2;
  final String text3;
  final String text4;
  final double? width;
  final Color? textColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          width: width,
          text: text1,
          textColor: textColor ?? ColorsStyles.greyColor,
          backgroundColor: backgroundColor ?? ColorsStyles.secondaryColor,
        ),
        if (text2 != null)
          CustomButton(
            text: text2!,
            textColor: textColor ?? ColorsStyles.greyColor,
            backgroundColor: backgroundColor ?? ColorsStyles.secondaryColor,
          ),
        CustomButton(
          text: text3,
          textColor: textColor ?? ColorsStyles.greyColor,
          backgroundColor: backgroundColor ?? ColorsStyles.secondaryColor,
        ),
        CustomButton(
          text: text4,
          textColor: ColorsStyles.greyColor,
          backgroundColor: ColorsStyles.primaryColor.withOpacity(0.8),
        ),
      ],
    );
  }
}
