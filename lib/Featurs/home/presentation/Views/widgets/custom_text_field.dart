import 'package:calculator/Featurs/home/presentation/view_model/providers/calculator_provider.dart';
import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final result = Provider.of<CalculatorProvider>(context).result;
    controller.text = result.toString();
    return TextField(
      // onChanged: (value) {
      //   Provider.of<CalculatorProvider>(context, listen: false).result = value;
      // },
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
        hintText: '0',
        hintStyle: Styles.textStyle48,
      ),
      style: Styles.textStyle48,
      textAlign: TextAlign.right,
      readOnly: true,
      showCursor: true,
    );
  }
}
