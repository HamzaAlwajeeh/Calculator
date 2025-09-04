import 'package:calculator/Featurs/home/data/models/history_model.dart';
import 'package:calculator/Featurs/home/presentation/view_model/providers/calculator_provider.dart';
import 'package:calculator/Featurs/home/presentation/view_model/providers/history_provider.dart';
import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.width,
    this.textStyle,
    this.isOperator = false,
  });
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? width;
  final TextStyle? textStyle;
  final bool isOperator;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        calculatorMethod(context, text);
      },
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

  void calculatorMethod(BuildContext context, String text) {
    if (!isOperator) {
      Provider.of<CalculatorProvider>(context, listen: false).setResult(text);
      Provider.of<CalculatorProvider>(
        context,
        listen: false,
      ).seCurrentOperation(text);
    } else if (text == '=') {
      String currentOperator =
          Provider.of<CalculatorProvider>(context, listen: false).operationText;

      String result =
          Provider.of<CalculatorProvider>(context, listen: false).result;
      HistoryModel historyModel = HistoryModel(
        currentOperator: currentOperator,
        result: result,
      );

      Provider.of<HistoryProvider>(
        context,
        listen: false,
      ).addHistory(historyModel);
    } else {
      Provider.of<CalculatorProvider>(
        context,
        listen: false,
      ).setOperation(text);
      Provider.of<CalculatorProvider>(
        context,
        listen: false,
      ).seCurrentOperation(text);
    }
  }
}
