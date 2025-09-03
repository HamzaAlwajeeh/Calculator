import 'package:calculator/Featurs/home/presentation/Views/widgets/custom_row_buttons.dart';
import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ButtonsSection()],
      ),
    );
  }
}

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 42),
      child: Column(
        children: [
          CustomRowButtons(
            text1: 'AC',
            text2: '8',
            text3: '%',
            text4: '÷',
            textColor: ColorsStyles.secondaryColor,
            backgroundColor: ColorsStyles.greyColor,
          ),
          const SizedBox(height: 22),
          CustomRowButtons(text1: '7', text2: '8', text3: '9', text4: 'X'),
          const SizedBox(height: 16),
          CustomRowButtons(text1: '4', text2: '5', text3: '6', text4: '-'),
          const SizedBox(height: 16),
          CustomRowButtons(text1: '1', text2: '2', text3: '3', text4: '+'),
          const SizedBox(height: 30),
          CustomRowButtons(text1: '0', text3: '.', text4: '=', width: 159),
        ],
      ),
    );
  }
}
