import 'package:flutter/material.dart';
import 'package:task/core/utils/colors.dart';
import 'package:task/core/utils/font_size.dart';

abstract class TextStyleManager {
  static TextStyle title = TextStyle(
    color: ColorManager.black,
    fontSize:FontSize.s18,
    fontWeight: FontWeight.w500
  );
  static const TextStyle textButtonStyle= TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: ColorManager.black,
      color: ColorManager.black);
  static  TextStyle textFieldStyle= TextStyle(
      color: ColorManager.black,fontSize: FontSize.s12);
  static  TextStyle buttonStyle= TextStyle(fontSize: FontSize.s14, color: ColorManager.black);
}
