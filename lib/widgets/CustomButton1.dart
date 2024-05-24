import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/constants/media_query_constants.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';

class CustomButton1 extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final double borderRadius;
  final double padding;
  final Color? borderColor;
  final double? borderWidth;
  final String? logo;

  CustomButton1({
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
    this.borderRadius = 8.0,
    this.padding = 16.0,
    this.borderColor,
    this.borderWidth,
    this.logo
  });

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQueryConstants.of(context);
    bool darkMode = DeviceMode.isDarkMode();


    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderColor != null && borderWidth != null ? Border.all(color: borderColor!, width: borderWidth!) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: mediaQuery.screenWidth*0.1,),
            if (logo != null) ...[Image.asset(logo!, height: 24.0, width: 24.0), SizedBox(width: mediaQuery.screenWidth*0.04)],
            Text(text, style: AppThemes.bodyLarge(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
