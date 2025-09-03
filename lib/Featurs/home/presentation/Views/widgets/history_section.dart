import 'package:calculator/Featurs/home/presentation/Views/widgets/list_view_history_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset('assets/icons/Vector.svg', width: 30),
        ),
        Expanded(child: ListViewHistoryItems()),
      ],
    );
  }
}
