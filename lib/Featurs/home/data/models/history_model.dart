import 'package:hive/hive.dart';

part 'history_model.g.dart';

@HiveType(typeId: 0)
class HistoryModel extends HiveObject {
  @HiveField(0)
  final String currentOperator;
  @HiveField(1)
  final String result;

  HistoryModel({required this.currentOperator, required this.result});
}
