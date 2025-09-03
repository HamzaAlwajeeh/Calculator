import 'package:calculator/Featurs/home/presentation/Views/widgets/button_section.dart';
import 'package:calculator/Featurs/home/presentation/Views/widgets/custom_text_field.dart';
import 'package:calculator/Featurs/home/presentation/Views/widgets/history_section.dart';
import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 34, top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: HistorySection()),
          Text('2245 + 14', style: Styles.textStyle24, maxLines: 1),
          CustomTextField(),
          ButtonsSection(),
        ],
      ),
    );
  }
}
