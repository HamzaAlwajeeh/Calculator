import 'package:calculator/Featurs/home/presentation/Views/widgets/button_section.dart';
import 'package:calculator/Featurs/home/presentation/Views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset('assets/icons/Vector.svg', width: 30),
          CustomTextField(),
          ButtonsSection(),
        ],
      ),
    );
  }
}
