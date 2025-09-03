import 'package:calculator/Featurs/home/presentation/Views/widgets/button_section.dart';
import 'package:calculator/constants/constants.dart';
import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '1,061',
            style: Styles.textStyle48.copyWith(color: ColorsStyles.greyColor),
            textAlign: TextAlign.right,
          ),
          ButtonsSection(),
        ],
      ),
    );
  }
}
