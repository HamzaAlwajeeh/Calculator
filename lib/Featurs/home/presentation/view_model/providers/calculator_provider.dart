import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  String? num1;
  String? num2;
  String result = 0.toString();
  String? operator;
  String? operationText;

  void setResult(String value) {
    if (result == '0') {
      result = value;
    } else {
      result += value;
    }
    notifyListeners();
  }

  void setNum1() {
    num1 = result;
    result = 0.toString();
    notifyListeners();
  }

  void setNum2() {
    num2 = result;
    notifyListeners();
  }

  void setOperation(String value) {
    if (operator == null) {
      operator = value;
      setNum1();
    } else {
      setNum2();
      calculate();
      clear();
    }
  }

  void clear() {
    num1 = null;
    num2 = null;
    operator = null;
  }

  void calculate() {
    switch (operator) {
      case '+':
        result = (double.parse(num1!) + double.parse(num2!)).toString();
        break;
      case '-':
        result = (double.parse(num1!) - double.parse(num2!)).toString();
        break;
      case 'X':
        result = (double.parse(num1!) * double.parse(num2!)).toString();
        break;
      case '÷':
        result = (double.parse(num1!) / double.parse(num2!)).toString();
        break;
    }
  }

  void reset() {
    num1 = null;
    num2 = null;
    operator = null;
    result = 0.toString();
    operationText = null;
    notifyListeners();
  }
}
