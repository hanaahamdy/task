import 'package:flutter/cupertino.dart';
import 'package:task/core/utils/assets_manager.dart';
import 'package:task/core/utils/values_manager.dart';

class BuildHomeAppBar extends StatelessWidget {
  const BuildHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsManager.homeAppBarIcon,
          width: AppSize.sH50,
          height: AppSize.sH50,
        )
      ],
    );
  }
}
