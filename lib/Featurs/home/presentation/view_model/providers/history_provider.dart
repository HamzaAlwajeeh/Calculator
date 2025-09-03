import 'package:calculator/Featurs/home/data/models/history_model.dart';
import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HistoryProvider extends ChangeNotifier {
  List<HistoryModel> histories = [];
  bool isShowingHistory = false;

  void addHistory(HistoryModel history) async {
    var historyBox = Hive.box<HistoryModel>(kHistoryBox);
    await historyBox.add(history);
  }

  void fechHistories() {
    var historyBox = Hive.box<HistoryModel>(kHistoryBox);
    histories = historyBox.values.toList();
    notifyListeners();
  }

  void showingHistory() {
    isShowingHistory = !isShowingHistory;
    if (isShowingHistory) {
      fechHistories();
    } else {
      histories.clear();
      notifyListeners();
    }
  }
}
