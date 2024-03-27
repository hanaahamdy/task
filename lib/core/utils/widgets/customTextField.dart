import 'package:flutter/material.dart';

import '../colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required this.label,
      this.controller,
      this.maxLines,
      this.onChanged,
      this.cursorColor,
      this.borderColor,
      this.outlinedColor,
      this.validator,
        this.prefix,
      this.fillColor, this.textFieldHeight, this.suffix})
      : super(key: key);
  final String label;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  Function(String)? onChanged;
  final Color? cursorColor;
  final Color? borderColor;
  final double?textFieldHeight;
  final Color? outlinedColor;
  final Color? fillColor;
  final int? maxLines;

  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      maxLines: maxLines,
      cursorColor: cursorColor,
      decoration: InputDecoration(
       prefixIcon: prefix,
          suffixIcon: suffix,
          filled: true,
          fillColor: fillColor ?? ColorManager.white,
          labelStyle: const TextStyle(color: Colors.black),
          label: Text(label),
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder()),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: borderColor ?? Colors.black),
        borderRadius: BorderRadius.circular(10));
  }
}
