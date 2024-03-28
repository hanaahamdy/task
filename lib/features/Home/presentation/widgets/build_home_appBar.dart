import 'package:flutter/cupertino.dart';
import 'package:task/core/utils/assets_manager.dart';

class BuildHomeAppBar extends StatelessWidget {
  const BuildHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsManager.logo,
      scale: 4.5,
    );
  }
}
