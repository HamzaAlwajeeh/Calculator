import 'package:calculator/Featurs/home/data/models/history_model.dart';
import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  List<HistoryModel> histories = [];
  bool isShowingHistory = false;

  void addHistory(HistoryModel history) {
    histories.add(history);
    notifyListeners();
  }

  void showingHistory() {
    isShowingHistory = !isShowingHistory;
    if (isShowingHistory) {
      //TODO => fetch
      notifyListeners();
    } else {
      histories.clear();
      notifyListeners();
    }
  }
}
