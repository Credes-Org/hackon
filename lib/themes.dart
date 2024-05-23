import 'package:flutter/material.dart';

class AppThemes {


  static TextStyle displayLarge({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 24,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle displayMedium({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 22,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle displaySmall({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 20,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle headlineMedium({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 18,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle headlineSmall({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle titleLarge({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle titleMedium({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.normal,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle titleSmall({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.normal,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle bodyLarge({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.normal,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle bodyMedium({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.normal,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle bodySmall({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 12,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.normal,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle labelLarge({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }

  static TextStyle labelSmall({required color, fontSize, fontFamily, letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 10,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: FontWeight.normal,
        letterSpacing: letterSpacing,
        color: color ?? Colors.white);
  }


}
