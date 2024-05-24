import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/constants/media_query_constants.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';

class CustomButton2 extends StatelessWidget {
  final String assetPath;
  final double iconSize;
  final VoidCallback onPressed;
  final double borderRadius;
  final double padding;
  final Color? borderColor;
  final double? borderWidth;
  final Color color;

  CustomButton2({
    required this.assetPath,
    required this.onPressed,
    required this.iconSize,
    required this.color,
    this.borderRadius = 8.0,
    this.padding = 16.0,
    this.borderColor,
    this.borderWidth,


  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: iconSize,
        height: iconSize,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderColor != null && borderWidth != null ? Border.all(color: borderColor!, width: borderWidth!) : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Image.asset(
            assetPath,
            width: iconSize,
            height: iconSize,
          ),
        ),
      ),
    );
  }
}
