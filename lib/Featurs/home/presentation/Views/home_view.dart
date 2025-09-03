import 'package:calculator/Featurs/home/presentation/Views/widgets/custom_button.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: '7',
                textColor: ColorsStyles.greyColor,
                backgroundColor: ColorsStyles.secondaryColor,
              ),
              CustomButton(
                text: '8',
                textColor: ColorsStyles.greyColor,
                backgroundColor: ColorsStyles.secondaryColor,
              ),
              CustomButton(
                text: '9',
                textColor: ColorsStyles.greyColor,
                backgroundColor: ColorsStyles.secondaryColor,
              ),
              CustomButton(
                text: 'X',
                textColor: ColorsStyles.greyColor,
                backgroundColor: ColorsStyles.primaryColor.withOpacity(0.8),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
