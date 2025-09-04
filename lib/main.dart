import 'package:calculator/Featurs/home/data/models/history_model.dart';
import 'package:calculator/Featurs/home/presentation/Views/home_view.dart';
import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(HistoryModelAdapter());

  await Hive.openBox<HistoryModel>(kHistoryBox);

  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: ColorsStyles.greyColor,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomeView(),
    );
  }
}
