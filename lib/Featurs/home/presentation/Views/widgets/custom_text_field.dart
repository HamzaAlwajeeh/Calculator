import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
