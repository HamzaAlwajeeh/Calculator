import 'package:calculator/Featurs/home/presentation/Views/widgets/custom_button.dart';
import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: CustomButton(
          text: '8',
          textColor: ColorsStyles.greyColor,
          backgroundColor: ColorsStyles.secondaryColor,
        ),
      ),
    );
  }
}
