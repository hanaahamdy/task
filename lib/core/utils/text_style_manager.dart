import 'package:flutter/material.dart';
import 'package:task/core/utils/colors.dart';
import 'package:task/core/utils/font_size.dart';

abstract class TextStyleManager {
  static TextStyle title = TextStyle(
    color: ColorManager.black,

    fontSize:FontSize.s22,
    fontWeight: FontWeight.bold
  );
  static const TextStyle textButtonStyle= TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: ColorManager.black,
      color: ColorManager.black);
  static  TextStyle textFieldStyle= TextStyle(
      color: ColorManager.black,fontSize: FontSize.s22);
  static  TextStyle buttonStyle= TextStyle(fontSize: FontSize.s16, color: ColorManager.black);
}
