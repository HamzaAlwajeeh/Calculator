import 'package:calculator/Featurs/home/presentation/Views/widgets/history_item.dart';
import 'package:flutter/material.dart';

class ListViewHistoryItems extends StatelessWidget {
  const ListViewHistoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: const HistoryItem(),
        );
      },
    );
  }
}
