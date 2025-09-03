import 'package:calculator/Featurs/home/presentation/Views/widgets/home_view_body.dart';
import 'package:calculator/Featurs/home/presentation/view_model/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => CalculatorProvider(),
        child: HomeViewBody(),
      ),
    );
  }
}
