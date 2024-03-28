import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/colors.dart';
import 'package:task/core/utils/text_style_manager.dart';
import 'package:task/core/utils/values_manager.dart';

class DefaultButton extends StatelessWidget {
  final double? buttonHMargin;
  final double? buttonVMargin;
  final Color? borderSideColor;
  final Color? backgroundColor;
  final String buttonLabel;
  final double? buttonWidth;

  final Function()? onPressed;
  final double? radius;
  final double? buttonHeight;
  final double? buttonHPadding;
  final double? buttonVPadding;
final TextStyle labelStyle;
  const DefaultButton(
      {super.key,
      this.buttonWidth,
      this.buttonHMargin,
      this.buttonVMargin,
      this.borderSideColor,
      this.backgroundColor,
      required this.buttonLabel,
      this.onPressed,
      this.radius,
      this.buttonHeight,
      this.buttonHPadding,
      this.buttonVPadding, required this.labelStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth ?? double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: buttonHPadding ?? AppPadding.pW1,
          vertical: buttonVPadding ?? AppPadding.pH1),
      height: buttonHeight ?? AppSize.sH40,
      margin: EdgeInsets.symmetric(
        horizontal: buttonHMargin ?? AppMargin.mH1,
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 5.r)),
            side: BorderSide(color: borderSideColor ?? ColorManager.black),
            backgroundColor: backgroundColor ?? ColorManager.white,
          ),
          child: Text(
            buttonLabel ?? '',
            style: TextStyleManager.buttonStyle,
          )),
    );
  }
}
