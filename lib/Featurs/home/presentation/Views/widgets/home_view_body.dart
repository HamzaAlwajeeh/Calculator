import 'package:calculator/Featurs/home/presentation/Views/widgets/button_section.dart';
import 'package:calculator/Featurs/home/presentation/Views/widgets/custom_text_field.dart';
import 'package:calculator/constants/constants.dart';
import 'package:calculator/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 34, top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: DisplayHistory()),
          Text('2245 + 14', style: Styles.textStyle24, maxLines: 1),
          CustomTextField(),
          ButtonsSection(),
        ],
      ),
    );
  }
}

class DisplayHistory extends StatelessWidget {
  const DisplayHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset('assets/icons/Vector.svg', width: 30),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '2548 + 12',
              style: Styles.textStyle20.copyWith(
                color: ColorsStyles.secondaryColor,
              ),
            ),
            Text('2560', style: Styles.textStyle20),
          ],
        ),
      ],
    );
  }
}
