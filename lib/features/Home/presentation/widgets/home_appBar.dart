import 'package:flutter/cupertino.dart';
import 'package:task/core/utils/assets_manager.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image.asset(
          AssetsManager.home_appbar_icon,
          width: screenWidth * .2,
          height: screenHeight * .2,
        )
      ],
    );
  }
}
