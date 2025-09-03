import 'package:calculator/Featurs/home/data/models/history_model.dart';
import 'package:calculator/constants/constants.dart';
import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.historyModel});
  final HistoryModel historyModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '2548 + 12',
          style: Styles.textStyle20.copyWith(
            color: ColorsStyles.secondaryColor,
          ),
        ),
        Text('2560', style: Styles.textStyle20),
      ],
    );
  }
}
