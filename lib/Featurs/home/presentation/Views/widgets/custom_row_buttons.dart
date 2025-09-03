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
    this.isOperator,
  });
  final String text1;
  final String? text2;
  final String text3;
  final String text4;
  final double? width;
  final Color? textColor;
  final Color? backgroundColor;
  final int? isOperator;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          isOperator: isOperator == 4 ? true : false,
          width: width,
          text: text1,
          textColor: textColor ?? ColorsStyles.greyColor,
          backgroundColor: backgroundColor ?? ColorsStyles.secondaryColor,
        ),
        if (text2 != null)
          CustomButton(
            isOperator: isOperator == 4 ? true : false,
            text: text2!,
            textColor: textColor ?? ColorsStyles.greyColor,
            backgroundColor: backgroundColor ?? ColorsStyles.secondaryColor,
          ),
        CustomButton(
          isOperator: isOperator == 4 ? true : false,
          text: text3,
          textColor: textColor ?? ColorsStyles.greyColor,
          backgroundColor: backgroundColor ?? ColorsStyles.secondaryColor,
        ),
        CustomButton(
          isOperator: true,
          text: text4,
          textColor: ColorsStyles.greyColor,
          backgroundColor: ColorsStyles.primaryColor.withOpacity(0.8),
        ),
      ],
    );
  }
}
