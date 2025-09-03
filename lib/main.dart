import 'package:calculator/Featurs/home/presentation/Views/home_view.dart';
import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: ColorsStyles.greyColor,
        ),
        scaffoldBackgroundColor: ColorsStyles.scaffoldDarkBackgroundColor,
      ),
      home: HomeView(),
    );
  }
}
