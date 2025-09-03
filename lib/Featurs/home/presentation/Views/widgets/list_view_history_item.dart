import 'package:calculator/Featurs/home/data/models/history_model.dart';
import 'package:calculator/Featurs/home/presentation/Views/widgets/history_item.dart';
import 'package:calculator/Featurs/home/presentation/view_model/providers/history_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListViewHistoryItems extends StatefulWidget {
  const ListViewHistoryItems({super.key});

  @override
  State<ListViewHistoryItems> createState() => _ListViewHistoryItemsState();
}

class _ListViewHistoryItemsState extends State<ListViewHistoryItems> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    List<HistoryModel> histories =
        Provider.of<HistoryProvider>(context).histories;
    histories.isNotEmpty ? scrollToBottom() : null;
    return ListView.builder(
      controller: _scrollController,
      reverse: false,
      physics: BouncingScrollPhysics(),
      itemCount: histories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: HistoryItem(historyModel: histories[index]),
        );
      },
    );
  }

  void scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 70,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }
}
