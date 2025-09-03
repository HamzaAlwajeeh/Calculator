import 'package:calculator/Featurs/home/presentation/Views/widgets/button_section.dart';
import 'package:calculator/Featurs/home/presentation/Views/widgets/custom_text_field.dart';
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
        children: [CustomTextField(), ButtonsSection()],
      ),
    );
  }
}
