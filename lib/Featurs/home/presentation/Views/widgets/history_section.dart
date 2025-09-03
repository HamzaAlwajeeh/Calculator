import 'package:calculator/Featurs/home/presentation/Views/widgets/list_view_history_item.dart';
import 'package:calculator/Featurs/home/presentation/view_model/providers/history_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HistorySection extends StatefulWidget {
  const HistorySection({super.key});

  @override
  State<HistorySection> createState() => _HistorySectionState();
}

class _HistorySectionState extends State<HistorySection> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    bool isShowingHistory =
        Provider.of<HistoryProvider>(context).isShowingHistory;
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () {
              Provider.of<HistoryProvider>(
                context,
                listen: false,
              ).showingHistory();
            },
            child: SvgPicture.asset(
              isShowingHistory
                  ? 'assets/icons/Vector.svg'
                  : 'assets/icons/close.svg',
              width: 30,
            ),
          ),
        ),
        Expanded(
          child: ListViewHistoryItems(
            isShowingHistory: isShowingHistory,
            scrollController: scrollController,
          ),
        ),
      ],
    );
  }
}
