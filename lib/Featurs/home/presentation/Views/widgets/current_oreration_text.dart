import 'package:calculator/Featurs/home/presentation/view_model/providers/calculator_provider.dart';
import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CurentOperationText extends StatefulWidget {
  const CurentOperationText({super.key});

  @override
  State<CurentOperationText> createState() => _CurentOperationTextState();
}

class _CurentOperationTextState extends State<CurentOperationText> {
  @override
  Widget build(BuildContext context) {
    String currentOperation =
        Provider.of<CalculatorProvider>(context).operationText;
    return Text(currentOperation, style: Styles.textStyle24, maxLines: 1);
  }
}
