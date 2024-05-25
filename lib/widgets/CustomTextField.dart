import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final BorderSide? enabledBorderSide;
  final BorderSide? focusedBorderSide;
  final BorderRadius? borderRadius;

  CustomTextField({
    required this.hintText,
    this.obscureText = false,
    this.controller,
    this.hintStyle,
    this.textStyle,
    this.enabledBorderSide,
    this.focusedBorderSide,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    bool darkMode = DeviceMode.isDarkMode();

    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ?? AppThemes.bodyMedium(color: darkMode ? Colors.white70 : Colors.black54),
        enabledBorder: OutlineInputBorder(
          borderSide: enabledBorderSide ?? BorderSide(color: darkMode ? Colors.white : Colors.black),
          borderRadius: borderRadius ?? BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: focusedBorderSide ?? BorderSide(color: darkMode ? UIColor.greenSecondary : UIColor.greenPrimary),
          borderRadius: borderRadius ?? BorderRadius.circular(8.0),
        ),
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8.0),
        ),
      ),
      style: textStyle ?? TextStyle(color: darkMode ? Colors.white : Colors.black),
    );
  }
}
