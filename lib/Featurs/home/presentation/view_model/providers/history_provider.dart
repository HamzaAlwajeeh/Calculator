import 'package:calculator/Featurs/home/data/models/history_model.dart';
import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  List<HistoryModel> histories = [];

  void addHistory(HistoryModel history) {
    histories.add(history);
    notifyListeners();
  }
}
