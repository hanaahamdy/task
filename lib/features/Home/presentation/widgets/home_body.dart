import 'package:flutter/material.dart';
import 'package:task/core/utils/colors.dart';
import 'package:task/features/Home/presentation/widgets/add_button.dart';
import 'package:task/features/Home/presentation/widgets/cards.dart';
import 'package:task/features/Home/presentation/widgets/home_appBar.dart';
import 'package:task/features/Home/presentation/widgets/imports.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManager.white,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ColorManager.grey, ColorManager.white, ColorManager.grey],
        ),
      ),
      width: double.infinity,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            HomeAppBar(),
            HomeTitle(),
            BuildSelectNumber(),
            Cards(),
            BuildButton(),
            AddButton()
          ],
        ),
      ),
    );
  }
}
